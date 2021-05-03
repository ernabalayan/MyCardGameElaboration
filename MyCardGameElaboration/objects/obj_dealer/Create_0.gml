/// @description Insert description here
// You can write your code in this editor
// enum for card type 
 global.heart = 0;
 global.spades = 1;
 global.diamonds = 2;
 global.clover = 3;
 
 // heart card

 global.heart6 = 0;
 global.heart7 = 1;
 global.heart8 = 2;
 global.heart9 = 3;
 global.heart10 = 4;
 global.heartJ = 5;
 global.heartQ = 6;
 global.heartK = 7;
 global.heartA = 8;
 
 //clover card
 global.clover6 = 9;
 global.clover7 = 10;
 global.clover8 = 11;
 global.clover9 = 12;
 global.clover10 = 13;
 global.cloverJ = 14;
 global.cloverQ = 15;
 global.cloverK = 16;
 global.cloverA = 17;
 
 //spades card
 global.spade6 = 18;
 global.spade7 = 19;
 global.spade8 = 20;
 global.spade9 = 21;
 global.spade10 = 22;
 global.spadeJ = 23;
 global.spadeQ = 24;
 global.spadeK = 25;
 global.spadeA = 26;
 
 //diamonds card
 
 global.diamond6 = 27;
 global.diamond7 = 28;
 global.diamond8 = 29;
 global.diamond9 = 30;
 global.diamond10 = 31;
 global.diamondJ = 32;
 global.diamondQ = 33;
 global.diamondK = 34;
 global.diamondA = 35;
 
 // enum for phases
global.PhaseBeforeDealing = 0;
global.PhaseDealing = 1;
global.PhaseComputerChooses = 2;
global.PhasePlayerChooses = 3;
global.PhaseResult = 4;
global.PhaseWaitToDiscard = 5;
global.PhaseDiscard = 6;
global.PhaseWaitToReshuffle = 7;
global.PhaseReshuffle = 8;



global.currentPhase = global.PhaseDealing;


// set real timer
global.deltaTime = 1 / room_speed;
timer = 0;


// set score for player and computer
scorePlayer = 0;
scoreComputer = 0;
hitMe = false;

playerMatchingCardCount = 0;
computerMatchingCardCount = 0;

// set which cards are played
playedCardPlayer = noone;
playedCardComputer = noone;



choseCardYOffset = 350; // card moves 300 pixels when chosen
chosenCardCenterSpace = 30; // space between player and computer

hoverCard = 160; // amount card moves when mouse is hovering

// discard pile position
discardPosX = 1000;
discardPosY = 380;

// position for player and computer hand
handPosX = 200;
handPosXOffset = 110;
handPosYOffset = 180;


waitToReshuffle = 0.7;
computerWait = 1;
dealWait = 0.25;
resultWait = 1.2;
waitToDeal = 1.3;
waitingToDiscard = 1;
discardWait = 0.4;
reshuffleWait = 0.05;


noOfDiscardCards = 0;


random_set_seed(current_time);
 
 
deckPosX = 130;
deckPosY = 380;
deckPosYOffset = 4; // spacing between each card

deckSize = 36;
handSize = 2;

CardsThatDontWork = 0;



deck = ds_list_create();
playerHand = ds_list_create();
computerHand = ds_list_create();
discardPile = ds_list_create();
playedHand = ds_list_create();

for (i = 0; i < deckSize; i++)
{
	var card = instance_create_layer(deckPosX, deckPosY + deckPosYOffset * i, "Instances", obj_card);
	card.type = i;
	

	
	card.dealt = false;
    card.isFaceUp = false;
	
	ds_list_add(deck, card);
}


ds_list_shuffle(deck);


 