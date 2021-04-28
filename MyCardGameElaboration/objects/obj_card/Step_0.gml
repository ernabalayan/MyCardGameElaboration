/// @description Insert description here
// You can write your code in this editor

x = lerp(x, targetX, moveSpeed * global.deltaTime);
y =lerp(y, targetY, moveSpeed * global.deltaTime);

if(isFaceUp == false){
	sprite_index = spr_cardBack;
}

//if(isPlayable == true)
//{
	
//	if (position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left))
//		{
					
//					//hover card and if you click on it it moves to the center
//					obj_dealer.playedCardPlayer = self;
//					self.targetX = obj_dealer.handPosX + obj_dealer.handPosXOffset * (obj_dealer.handSize + 1) * 0.5;
//					self.depth = -1;
//					// played card changes to card chosen
//					ds_list_add(obj_dealer.playedHand,self);
//					ds_list_delete(obj_dealer.playerHand,self);
			
//					// play sound
//					audio_play_sound(snd_card, 0, false);
					
//					if (ds_list_size(obj_dealer.playedHand) >= 1)
//					{
//						self.targetY = obj_dealer.chosenCardCenterSpace + obj_dealer.playedCardComputer.y;
//						//show_debug_message("target y of chosen card is: " + string(self.targetY) + " " + string(obj_dealer.playedCardComputer.y));
//					}
					
//					obj_dealer.timer = 0;
					
//					isPlayable = false;
//					global.currentPhase = global.PhaseDiscard;
					
				
//		}
		
//		else if (position_meeting(mouse_x, mouse_y, self))
//		{
			
//			self.targetY = room_height - obj_dealer.hoverCard;
			
//		}
		
	
	
	
	
	
//}