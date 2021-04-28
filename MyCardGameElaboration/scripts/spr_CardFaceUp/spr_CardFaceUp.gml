// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function CardFaceUp(card, facedUp)
{
    card.isFaceUp = facedUp;
 
 // if card are being revealed, show sprite 
    if (facedUp)
    {
		//show_debug_message("card type is: " + string(card.type));
        if (card.type == global.heart6)
        {
            card.sprite_index = spr_6Heart;
			card.cardSuit = global.heart;
			card.cardNumber = 6;
        }
        else if (card.type == global.heart7)
        {
            card.sprite_index = spr_7Heart;
			card.cardSuit= global.heart;
			card.cardNumber = 7;
        }
		  else if (card.type == global.heart8)
        {
            card.sprite_index = spr_8Heart;
			card.cardSuit = global.heart;
			card.cardNumber = 8;
        }
		 else if (card.type == global.heart9)
        {
            card.sprite_index = spr_9Heart;
			card.cardSuit = global.heart;
			card.cardNumber = 9;
        }
		else if (card.type == global.heart10)
        {
            card.sprite_index = spr_10Heart;
			card.cardSuit = global.heart;
			card.cardNumber = 10;
        }
		else if (card.type == global.heartJ)
        {
            card.sprite_index = spr_JHeart;
			card.cardSuit = global.heart;
			card.cardNumber = 11;
        }
		else if (card.type == global.heartQ)
        {
            card.sprite_index = spr_QHeart;
			card.cardSuit = global.heart;
			card.cardNumber = 12;
        }
		else if (card.type == global.heartK)
        {
            card.sprite_index = spr_KHeart;
			card.cardSuit = global.heart;
			card.cardNumber = 13;
		}
		else if (card.type == global.heartA)
        {
			card.sprite_index = spr_AHeart;
			card.cardSuit = global.heart;
			card.cardNumber = 14;
        }
		
		
		
		else if (card.type == global.clover6)
        {
			card.sprite_index = spr_6Clover;
			card.cardSuit = global.clover;
			card.cardNumber = 6;
        }
		else if (card.type == global.clover7)
        {
			card.sprite_index = spr_7Clover;
			card.cardSuit = global.clover;
			card.cardNumber = 7;
        }
		else if (card.type == global.clover8)
        {
			card.sprite_index = spr_8Clover;
			card.cardSuit = global.clover;
			card.cardNumber = 8;
        }
		else if (card.type == global.clover9)
        {
			card.sprite_index = spr_9Clover;
			card.cardSuit = global.clover;
			card.cardNumber = 9;
        }
        else if (card.type == global.clover10)
        {
			card.sprite_index = spr_10Clover;
			card.cardSuit = global.clover;
			card.cardNumber = 10;
        }
		else if (card.type == global.cloverJ)
        {
			card.sprite_index = spr_JClover;
			card.cardSuit = global.clover;
			card.cardNumber = 11;
        }
		else if (card.type == global.cloverQ)
        {
			card.sprite_index = spr_QClover;
			card.cardSuit = global.clover;
			card.cardNumber = 12;
        }
		else if (card.type == global.cloverK)
        {
			card.sprite_index = spr_KClover;
			card.cardSuit = global.clover;
			card.cardNumber = 13;
        }
		else if (card.type == global.cloverA)
        {
			card.sprite_index = spr_AClover;
			card.cardSuit = global.clover;
			card.cardNumber = 14;
        }
		
		
		else if (card.type == global.spade6)
        {
			card.sprite_index = spr_6Spades;
			card.cardSuit = global.spades;
			card.cardNumber = 6;
        }
		else if (card.type == global.spade7)
        {
			card.sprite_index = spr_7Spades;
			card.cardSuit = global.spades;
			card.cardNumber = 7;
        }
		else if (card.type == global.spade8)
        {
			card.sprite_index = spr_8Spades;
			card.cardSuit = global.spades;
			card.cardNumber = 8;
        }
		else if (card.type == global.spade9)
        {
			card.sprite_index = spr_9Spades;
			card.cardSuit = global.spades;
			card.cardNumber = 9;
        }
		else if (card.type == global.spade10)
        {
			card.sprite_index = spr_10Spades;
			card.cardSuit = global.spades;
			card.cardNumber = 10;
        }
		else if (card.type == global.spadeJ)
        {
			card.sprite_index = spr_JSpades;
			card.cardSuit = global.spades;
			card.cardNumber = 11;
        }
		else if (card.type == global.spadeQ)
        {
			card.sprite_index = spr_QSpades;
			card.cardSuit = global.spades;
			card.cardNumber = 12;
        }
		else if (card.type == global.spadeK)
        {
			card.sprite_index = spr_KSpades;
			card.cardSuit = global.spades;
			card.cardNumber = 13;
        }
		else if (card.type == global.spadeA)
        {
			card.sprite_index = spr_ASpades;
			card.cardSuit = global.spades;
			card.cardNumber = 14;
        }
		
		
		else if (card.type == global.diamond6)
        {
			card.sprite_index = spr_6Diamond;
			card.cardSuit = global.diamonds;
			card.cardNumber = 6;
        }
		else if (card.type == global.diamond7)
        {
			card.sprite_index = spr_7Diamond;
			card.cardSuit = global.diamonds;
			card.cardNumber = 7;
        }
		else if (card.type == global.diamond8)
        {
			card.sprite_index = spr_8Diamond;
			card.cardSuit = global.diamonds;
			card.cardNumber = 8;
        }
		else if (card.type == global.diamond9)
        {
			card.sprite_index = spr_9Diamond;
			card.cardSuit = global.diamonds;
			card.cardNumber = 9;
        }
		else if (card.type == global.diamond10)
        {
			card.sprite_index = spr_10Diamond;
			card.cardSuit = global.diamonds;
			card.cardNumber = 10;
        }
		else if (card.type == global.diamondJ)
        {
			card.sprite_index = spr_JDiamond;
			card.cardSuit = global.diamonds;
			card.cardNumber = 11;
        }
		else if (card.type == global.diamondQ)
        {
			card.sprite_index = spr_QDiamond;
			card.cardSuit = global.diamonds;
			card.cardNumber = 12;
        }
		else if (card.type == global.diamondK)
        {
			card.sprite_index = spr_KDiamond;
			card.cardSuit = global.diamonds;
			card.cardNumber = 13;
        }
		else if (card.type == global.diamondA)
        {
			card.sprite_index = spr_ADiamond;
			card.cardSuit = global.diamonds;
			card.cardNumber = 14;
        }
    }
	
    else
    {
        card.sprite_index = spr_cardBack;
    }
}
