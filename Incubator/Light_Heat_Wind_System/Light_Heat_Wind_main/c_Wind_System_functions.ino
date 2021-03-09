
void setPwmDuty3(byte duty) 
{
  OCR3A = (word) (duty*TCNT1_TOP)/100;
}

void setPwmDuty4(byte duty) 
{
  OCR3B = (word) (duty*TCNT1_TOP)/100;
}


void setPwmDuty5(byte duty) 
{
  OCR3C = (word) (duty*TCNT1_TOP)/100;
}

void setPwmDuty6(byte duty) 
{
  OCR4A = (word) (duty*TCNT1_TOP)/100;
}

void setPwmDuty7(byte duty) 
{
  OCR4B = (word) (duty*TCNT1_TOP)/100;
}

void setPwmDuty8(byte duty) 
{
  OCR4C = (word) (duty*TCNT1_TOP)/100;
}


void update_wind_system(float updated_wind_speed) {
    if (updated_wind_speed > max_speed){
      speed_array_val = max_speed;
    }

    else if (updated_wind_speed < min_speed){
      speed_array_val = min_speed;
    }

    else {
      speed_array_val = updated_wind_speed;
    }
    
    int rpm = (((speed_array_val- min_speed)/(max_speed - min_speed))*145)+ 110;

  analogWrite(OC3A_PIN, rpm); 
  analogWrite(OC3B_PIN, rpm);
  analogWrite(OC3C_PIN, rpm); 
  analogWrite(OC4A_PIN, rpm);
  analogWrite(OC4B_PIN, rpm); 
  analogWrite(OC4C_PIN, rpm);
} 
