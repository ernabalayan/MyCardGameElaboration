/// @description Insert description here
// You can write your code in this editor

timer += global.deltaTime; // set timer 


var topCardIndex = ds_list_size(deck) - 1;
	
switch (global.currentPhase) 
{ 
	
		
	case global.PhaseBeforeDealing: // if in phase before dealing
	
			if (timer < waitToDeal)
			{
				return;
			}
				timer = 0;
		
				ds_list_shuffle(deck);
		
				global.currentPhase = global.PhaseDealing;
		
	break;

	// dealing phase	
	case global.PhaseDealing:
			// use timer
				if (timer < dealWait)
				{
					return;
				}
				timer = 0;
			// take the top card from the deck and move it to computer hand
			if(ds_list_size(deck) > 0 ){
				if (ds_list_size(computerHand) < handSize)
				{
					//show_debug_message(deckSize);
					var card = deck[|topCardIndex];
					ds_list_delete(deck, topCardIndex);
					ds_list_add(computerHand, card);
			
					// move card visually - 
					card.targetX = handPosX + handPosXOffset * ds_list_size(computerHand);
					card.targetY = handPosYOffset;
					audio_play_sound(snd_card, 0, false);
		
				}
				// if the player hand is less than the hand size
				else if (ds_list_size(playerHand) < handSize)
				{
					var card = deck[|topCardIndex];
					ds_list_delete(deck, topCardIndex);
					ds_list_add(playerHand, card);
			
					// move card visually
	
					card.targetX = handPosX + handPosXOffset * ds_list_size(playerHand);
					card.targetY = room_height - handPosYOffset;
					audio_play_sound(snd_card, 0, false);
	
				}
				else
				{
					for (var i = 0; i < handSize; i++)
					{
						CardFaceUp(playerHand[|i], true);
					}
					global.currentPhase = global.PhaseComputerChooses;
				}
			}
			
			else{
				
				global.currentPhase = global.PhaseComputerChooses;
			}
		
		break;
		
	case global.PhaseComputerChooses:
	
		// timer for computer to choose card to play
			if (timer < computerWait)
			{
				return;
			}
			timer = 0;
		
			var pickCardIndex = irandom_range(0, handSize - 1); // computer picks random card from hand
			playedCardComputer = computerHand[|pickCardIndex]; // played card is assigned to the picked card
			// goes into chosen card position
			playedCardComputer.targetX = handPosX + handPosXOffset * (handSize + 1) * 0.5; 
			playedCardComputer.targetY = choseCardYOffset;
			// reveals computer card
			CardFaceUp(playedCardComputer, true);
			// plays card sound
			audio_play_sound(snd_card, 0, false);
	
			global.currentPhase = global.PhasePlayerChooses;
		
		

		
	break;
		
	case global.PhasePlayerChooses:
		
			var card = deck[|topCardIndex];
		if (position_meeting(mouse_x, mouse_y,obj_hitme) && mouse_check_button_pressed(mb_left) && ds_list_size(deck) > 0)
		{
					
					//hover card and if you click on it it moves to the center
					card.targetX = handPosX + handPosXOffset * ds_list_size(playerHand) + 100;
					CardFaceUp(card,true);
					card.targetY = room_height - handPosYOffset;
					card.depth = -1;
					// played card changes to card chosen
					ds_list_delete(deck,topCardIndex);
					ds_list_add(playerHand,card);
			
					// play sound
					audio_play_sound(snd_card, 0, false);
					
					timer = 0;
					
					global.currentPhase = global.PhaseResult;
					
				
		}
		if (position_meeting(mouse_x, mouse_y,obj_donthit) && mouse_check_button_pressed(mb_left)){
			global.currentPhase = global.PhaseResult;
		}
		
	
		break;
		
	case global.PhaseResult:
	for(var i = 0; i < ds_list_size(computerHand); i++){
	CardFaceUp(computerHand[|i],true);
	}
	
		if (timer < waitToDeal)
		{
			return;
		}
		
		timer = 0;
		
		for(var i = 0; i < ds_list_size(computerHand); i++)
		{
		var card = computerHand[|0];
		var computersTotalCardNumber = card.cardNumber + playedCardComputer.cardNumber; 
		show_debug_message("computer total card number is: " + string(computersTotalCardNumber));
		if(computersTotalCardNumber > 21)
		{
			scorePlayer = scorePlayer + 1;
			
		}

		if (computersTotalCardNumber < 21) 
		{
			scoreComputer = scoreComputer + 1;
		}
		if (computersTotalCardNumber == 21) 
		{
			scoreComputer = scoreComputer + 1;
		}

		}

		global.currentPhase = global.PhaseDiscard;
	
	break;
	
	
case global.PhaseDiscard:
	
		if (timer < discardWait)
		{
			return;
		}
		timer = 0;
		// if there are less cards in the discard pile than the hand size
		if (noOfDiscardCards < handSize)
		{
			//delete from player hand
			var card = playerHand[|0];
			ds_list_delete(playerHand, 0);
		}
		else
		{
			// delete from computer hand
		var card = computerHand[|0];
		ds_list_delete(computerHand, 0);
		}
		// add to discard pile list
		ds_list_add(discardPile, card);
		//make all cards faced up
		CardFaceUp(card, true);
		// move to discard pile position
		card.targetX = discardPosX;
		
		var depthIndex = ds_list_size(discardPile);
		card.targetY = discardPosY - deckPosYOffset * depthIndex;
		card.depth = deckSize - depthIndex;
		// play card sound
		audio_play_sound(snd_card, 0, false);
		
		noOfDiscardCards++;
		
		if (noOfDiscardCards >= handSize * 2)
		{
			noOfDiscardCards = 0;
			
			if (ds_list_size(deck) == 0)
			{
				global.currentPhase = global.PhaseWaitToReshuffle;
			}
			else
			{
				global.currentPhase = global.PhaseDealing;
			}
		}
		
		break;
		
	case global.PhaseWaitToReshuffle:
	
		if (timer < waitToReshuffle)
		{
			return;
		}
		timer = 0;
		
		global.currentPhase = global.PhaseReshuffle;
		
	case global.PhaseReshuffle:
		
		if (timer < reshuffleWait)
		{
			return;
		}
		timer = 0;
		
		var discardSize = ds_list_size(discardPile);
		// move all cards from discard pile to deck pile
		if (discardSize > 0)
		{
			discardSize--;
			var card = discardPile[|discardSize];
			// move visually 
			CardFaceUp(card, false);
			card.targetX = deckPosX;
			var depthIndex = ds_list_size(deck);
			card.targetY = deckPosY + deckPosYOffset * depthIndex - deckPosYOffset * deckSize;
			audio_play_sound(snd_card, 0, false);
			ds_list_delete(discardPile,discardSize);
			ds_list_add(deck, card);
		}
		else
		{
			global.currentPhase = global.PhaseBeforeDealing;
		}
	
		break;
		
}