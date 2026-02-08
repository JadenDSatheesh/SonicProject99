/// @description Insert description here
// You can write your code in this editor

show_debug_message(canPressQ)

allowQ = true;

if (canPressQ)
{
	canPressQ = false;
	NewTextBox("This is a test text message", 0)
	NewTextBox("This is a test text message \n Secondline", 2)
	allowQ = true;
}
else
	canPressQ = true;