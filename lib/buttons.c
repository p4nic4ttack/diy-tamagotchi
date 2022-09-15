#include <buttons.h>

uint8_t check_button_pressed(Button button){
	delay(20);
	if(button == UP){
		return !p2_data_0;
	}if(button == RIGHT){
		return !p2_data_1;
	}if(button == DOWN){
		return !p2_data_2;
	}if(button == LEFT){
		return !p2_data_3;
	}if(button == A){
		return !p2_data_5;
	}if(button == B){
		return !p2_data_4;
	}
}

/*void poll_buttons(Button pressed_buttons[]){
	
	for(int i = UP, count = 0; i <= B; i++){
		if(check_button_pressed(i)){
			pressed_buttons[count] = i;
			count+=1;
		}
	}
}*/