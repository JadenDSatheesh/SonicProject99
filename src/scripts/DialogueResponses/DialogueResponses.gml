// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueResponses(_dialogueResponses)
{
	switch(_dialogueResponses)
	{
		case 0: break;
		case 1: NewTextBox("SKIBIDI GYATT", 2, ["3:Yes!","0:No..."]); break;
		case 2: NewTextBox("RIZZ TAX", 2); break;
		case 3: NewTextBox("SHUT UP OML YOU SERVE  Z E R O  PURPOSE", 2); break;
		default: break;
	}
}