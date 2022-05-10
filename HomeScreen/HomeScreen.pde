//Global Variables
float ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y, pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y, pt13X, pt13Y, pt14X, pt14Y, pt15X, pt15Y, pt16X, pt16Y;
float button1X, button1Y, button1Width, button1Height, button2X, button2Y, button2Width, button2Height, button3X, button3Y, button3Width, button3Height, button4X, button4Y, button4Width, button4Height;
float cButtonWidth, cButtonHeight, cButton1X, cButton1Y, cButton2X, cButton2Y, cButton3X, cButton3Y,cButton4X, cButton4Y,cButton5X, cButton5Y,cButton6X, cButton6Y, button5X, button5Y, button6X, button6Y, button6Width, button6Height, button8X, button8Y, button8Width, button8Height;
float button7X, button7Y, button7Width, button7Height;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight;
float text6X, text6Y, text6Width, text6Height, text1Y, text1Height, text8Y;
float image0X, image0Y,image1X, image1Y, image2X, image2Y, image3X, image3Y, image4X, image4Y, image5X, image5Y, image6X, image6Y, imageWidth, imageHeight;
PImage pic0, pic1, pic2, pic3, pic4, pic5, pic6, pic7, pic8, pic9, pic10, pic11, pic12;
float faceX, faceY, faceDiameter, leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter, mouthX1, mouthY1, mouthX2, mouthY2;
float trunkX1, trunkY1, trunkX2, trunkY2, trunkThick;
float leaf1X1, leaf1Y1, leaf1X2, leaf1Y2, leaf1X3, leaf1Y3, leaf2X1, leaf2Y1, leaf2X2, leaf2Y2, leaf2X3, leaf2Y3, leaf3X1, leaf3Y1, leaf3X2, leaf3Y2, leaf3X3, leaf3Y3;
PFont boxFont, buttonFont;
String box1Text= "Polar Climate";
String box3Text= "Tropical Rainy";
String box4Text= "Temperate Continental Climate";
String box6Text= "Highlands Climate";
String box7Text= "Temperate Marine Climate";
String box8Text= "The buttons below change the pictures of all different climates.";
String box9Text= "Dry Climate";
String clickMe= "Click Me!";
String start= "Start";
String quit= "Quit";
String restart= "Restart";
color white = #FFFFFF, black = #000000, purple = #C0B2CC, darkPurple = #786a87, gray = #ACABAD, red= #FC0317, yellow= #F7EA7F;
Boolean box6On=false, box1On=false, box9On=false, box8On=false, box4On=false, box7On=false, box3On=false, pic1On=false, pic2On=false, pic3On=false, pic4On=false, pic5On=false, pic6On=false,test =false;
//
void setup() 
{
  fullScreen(); //displayWidth, displayHeight
  displayOrientation();
  //
  //Population
  ptDiameter = height*1/40;
  rectWidth = width*1/3;
  rectHeight = height*1/3;
  //
  //Points
  pt1X = pt5X = pt9X = pt13X = 0;
  pt2X = pt6X = pt10X = pt14X = width*1/3;
  pt3X = pt7X = pt11X = pt15X = width*2/3;
  pt4X = pt8X = pt12X = pt16X = width;
  //
  pt1Y = pt2Y = pt3Y = pt4Y = 0;
  pt5Y = pt6Y = pt7Y = pt8Y = height*1/3;
  pt9Y = pt10Y = pt11Y = pt12Y = height*2/3;
  pt13Y = pt14Y = pt15Y = pt16Y= height;
  //
  //
  //Button 1 (for box 5)
  button1X = rectWidth; //stars at the left edge of box 5
  button1Y = rectHeight*15/8; // rectHeight*8/8 would start it from the very top of box 5
  button1Width = rectWidth*7/24;
  button1Height = rectHeight*1/8;
  //Button 2 (for box 6)
  button2X = rectWidth*14/6; 
  button2Y = rectHeight*27/16; 
  button2Width = rectWidth*1/3;
  button2Height = rectHeight*1/5;
  //Button 3 (for box 1)
  button3X = rectWidth*1/25; 
  button3Y = rectHeight*5/16; 
  button3Width = rectWidth*1/4;
  button3Height = rectHeight*1/5;
  //Button 4 (for box 9)
  button4X = rectWidth*14/5; 
  button4Y = rectHeight*21/8; 
  button4Width = rectWidth*1/6;
  button4Height = rectHeight*1/4;
  //Pic change Buttons (for box 8)
  cButton1X = pt10X+rectWidth*1/4; 
  cButton1Y = pt10Y+rectHeight*1/5; 
  cButton2X = pt10X+rectWidth*2/4; 
  cButton2Y = pt10Y+rectHeight*1/5;
  cButton3X = pt10X+rectWidth*1/4; 
  cButton3Y = pt10Y+rectHeight*2/5;
  cButton4X = pt10X+rectWidth*2/4; 
  cButton4Y = pt10Y+rectHeight*2/5;
  cButton5X = pt10X+rectWidth*1/4; 
  cButton5Y = pt10Y+rectHeight*3/5;
  cButton6X = pt10X+rectWidth*2/4; 
  cButton6Y = pt10Y+rectHeight*3/5;
  cButtonWidth = rectWidth*1/8;
  cButtonHeight = rectHeight*1/9;
  //button5X = cButton2X;
  //button5Y = cButton3Y;
  //Button 6 (for box 4)
  button6X = rectWidth*11/16; 
  button6Y = rectHeight*9/8; 
  button6Width = rectWidth*1/4;
  button6Height = rectHeight*1/5;
  //Button 7 (for box 7)
  button7X = rectWidth*11/16; 
  button7Y = rectHeight*19/8; 
  button7Width = rectWidth*1/4;
  button7Height = rectHeight*1/5;
  //Button 8 (for box 3)
  button8X = rectWidth*31/15; 
  button8Y = rectHeight*5/8; 
  button8Width = rectWidth*1/4;
  button8Height = rectHeight*1/5;
  //Quit Button and Restart Button (for box 2)
  quitButtonX = rectWidth*5/4;
  quitButtonY = rectHeight*1/9;
  quitButtonWidth = rectWidth*1/2;
  quitButtonHeight = rectHeight*1/3;
  restartButtonX = rectWidth*5/4;
  restartButtonY = rectHeight*5/9;
  restartButtonWidth = rectWidth*1/2;
  restartButtonHeight = rectHeight*1/3;
  //
  //
  //Pics
  imageWidth = rectWidth;
  imageHeight = rectHeight;
  //
  pic0 = loadImage ("pics/start.jpg");
  pic1 = loadImage ("pics/Dry Climate (1).jpg"); 
  pic2 = loadImage ("pics/Highlands Climate (1).jpg");
  pic3 = loadImage ("pics/Polar Climate (1).jpg"); 
  pic4 = loadImage ("pics/Temperate Continental Climate (1).jpg");
  pic5 = loadImage ("pics/Temperate Marine Climate (1).jpg"); 
  pic6 = loadImage ("pics/Tropical Rainy (1).jpg");
  pic7 = loadImage ("pics/Dry Climate (2).jpg"); 
  pic8 = loadImage ("pics/Highlands Climate (2).jpg");
  pic9 = loadImage ("pics/Polar Climate (2).jpg");
  pic10 = loadImage ("pics/Temperate Continental Climate (2).jpg");
  pic11= loadImage ("pics/Temperate Marine Climate (2).jpg");
  pic12= loadImage ("pics/Tropical Rainy (2).jpg");
  //
  image0X = width*1/3;
  image0Y = height*1/3;
  image1X = width*2/3;
  image1Y = height*2/3;
  image2X = width*2/3;
  image2Y = height*1/3;
  image3X = width*0;
  image3Y = height*0;
  image4X = width*0;
  image4Y = height*1/3;
  image5X = width*0;
  image5Y = height*2/3;
  image6X = width*2/3;
  image6Y = height*0;
  //
  //
  //Text
  text6X = width*20/30;
  text6Y = height*7/18; 
  text6Width = width*1/3;
  text6Height = rectHeight;
  text1Y = rectHeight*2/3;
  text1Height = rectHeight*1/3;
  text8Y = rectHeight*31/15;
  //
  boxFont = createFont ("Cambria", 55);
  buttonFont = createFont ("Cambria", 25);
}//End setup
//
void draw() {
  //Rectangles must be 3 by 3
  fill(yellow);
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  rect(pt2X, pt2Y, rectWidth, rectHeight);
  rect(pt3X, pt3Y, rectWidth, rectHeight);
  rect(pt5X, pt5Y, rectWidth, rectHeight);
  rect(pt6X, pt6Y, rectWidth, rectHeight);
  rect(pt7X, pt7Y, rectWidth, rectHeight);
  rect(pt9X, pt9Y, rectWidth, rectHeight);
  rect(pt10X, pt10Y, rectWidth, rectHeight);
  rect(pt11X, pt11Y, rectWidth, rectHeight);
  fill(white);
  //
  //box5
  image(pic0, image0X, image0Y, imageWidth, imageHeight);
  //
  textAlign (CENTER, CENTER);
  textFont(boxFont, 100);
  text(start, pt6X, pt6Y, rectWidth, rectHeight);
  textFont(boxFont);
  //
  rect(button1X, button1Y, button1Width, button1Height);
  if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
    fill(black);
    rect(button1X, button1Y, button1Width, button1Height);
    textAlign (CENTER, CENTER);
    textFont(buttonFont);
    fill(white);
    text(start, button1X, button1Y, button1Width, button1Height);
  }
  else {
    stroke(gray);
    fill(white);
    rect(button1X, button1Y, button1Width, button1Height);
    stroke(black);
    textAlign (CENTER, CENTER);
    textFont(buttonFont);
    fill(gray);
    text(clickMe, button1X, button1Y, button1Width, button1Height);
    fill(white);
  }
  fill(white);
  //
  line(pt6X, pt6Y, pt7X, pt7Y); //because the pic overlaps the border
  line(pt6X, pt6Y, pt10X, pt10Y);
  line(pt10X, pt10Y, pt11X, pt11Y);
  //
  //box6
  if (box6On == true) 
  {
    if (pic2On == true)
    {
      image(pic2, image2X, image2Y, imageWidth, imageHeight);
      line(pt7X, pt7Y, pt8X, pt8Y);
      line(pt7X, pt7Y, pt11X, pt11Y);
      textAlign (CENTER, TOP);
      textFont(boxFont, 30);
      fill(black);
      text(box6Text, pt7X, pt7Y, rectWidth, rectHeight);
      fill(white);
      textFont(boxFont);
      rect(button2X, button2Y, button2Width, button2Height);
      if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
        fill(black);
        rect(button2X, button2Y, button2Width, button2Height);
        fill(white);
        textAlign (CENTER, CENTER);
        textFont(buttonFont, 30);
        text(clickMe, button2X, button2Y, button2Width, button2Height);
        textFont(buttonFont);
        fill(white);
      } 
      else {
        stroke(darkPurple);
        fill(purple);
        rect(button2X, button2Y, button2Width, button2Height);
        stroke(black);
        fill(darkPurple);
        textAlign (CENTER, CENTER);
        textFont(buttonFont, 30);
        text(clickMe, button2X, button2Y, button2Width, button2Height);
        textFont(buttonFont);
        fill(white);
      }
      fill(white);
    }
    else
    {
      image(pic8, image2X, image2Y, imageWidth, imageHeight);
      line(pt7X, pt7Y, pt8X, pt8Y);
      line(pt7X, pt7Y, pt11X, pt11Y);
      textAlign (CENTER, TOP);
      textFont(boxFont, 30);
      fill(black);
      text(box6Text, pt7X, pt7Y, rectWidth, rectHeight);
      fill(white);
      textFont(boxFont);
      rect(button2X, button2Y, button2Width, button2Height);
      if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
        fill(black);
        rect(button2X, button2Y, button2Width, button2Height);
        fill(white);
        textAlign (CENTER, CENTER);
        textFont(buttonFont, 30);
        text(clickMe, button2X, button2Y, button2Width, button2Height);
        textFont(buttonFont);
        fill(white);
      } 
      else {
        stroke(darkPurple);
        fill(purple);
        rect(button2X, button2Y, button2Width, button2Height);
        stroke(black);
        fill(darkPurple);
        textAlign (CENTER, CENTER);
        textFont(buttonFont, 30);
        text(clickMe, button2X, button2Y, button2Width, button2Height);
        textFont(buttonFont);
        fill(white);
      }
      fill(white);
    }
    
  }
  //
  //box1
  if (box1On == true) 
  {
    if (pic3On == true)
    {
      image(pic3, image3X, image3Y, imageWidth, imageHeight); //extra lines aren't needed because this box is at the top right
      textAlign (CENTER, TOP);
      textFont(boxFont, 30);
      fill(black);
      text(box1Text, pt1X, pt1Y, rectWidth, rectHeight);
      fill(white);
      textFont(boxFont);
      rect(button3X, button3Y, button3Width, button3Height);
      if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
        fill(black);
        rect(button3X, button3Y, button3Width, button3Height);
        fill(white);
        textAlign (CENTER, CENTER);
        textFont(buttonFont, 20);
        text(clickMe, button3X, button3Y, button3Width, button3Height);
        textFont(buttonFont);
        fill(white);
       } else {
        stroke(#6a5f50);
        fill(#a59787);
        rect(button3X, button3Y, button3Width, button3Height);
        stroke(black);
        fill(#6a5f50);
        textAlign (CENTER, CENTER);
        textFont(buttonFont, 20);
        text(clickMe, button3X, button3Y, button3Width, button3Height);
        textFont(buttonFont);
        fill(white);
      }
      fill(white);
    }
    else {
      image(pic9, image3X, image3Y, imageWidth, imageHeight); //extra lines aren't needed because this box is at the top right
      textAlign (CENTER, TOP);
      textFont(boxFont, 30);
      fill(black);
      text(box1Text, pt1X, pt1Y, rectWidth, rectHeight);
      fill(white);
      textFont(boxFont);
      rect(button3X, button3Y, button3Width, button3Height);
      if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
        fill(black);
        rect(button3X, button3Y, button3Width, button3Height);
        fill(white);
        textAlign (CENTER, CENTER);
        textFont(buttonFont, 20);
        text(clickMe, button3X, button3Y, button3Width, button3Height);
        textFont(buttonFont);
        fill(white);
      } else {
        stroke(#6a5f50);
        fill(#a59787);
        rect(button3X, button3Y, button3Width, button3Height);
        stroke(black);
        fill(#6a5f50);
        textAlign (CENTER, CENTER);
        textFont(buttonFont, 20);
        text(clickMe, button3X, button3Y, button3Width, button3Height);
        textFont(buttonFont);
        fill(white);
      }
      fill(white);
    }
  }
  //
  //box9
  if (box9On == true)
  {
    if (pic1On == true)
    {
      image(pic1, image1X, image1Y, imageWidth, imageHeight);
      textAlign (CENTER, TOP);
      textFont(boxFont, 30);
      fill(black);
      text(box9Text, pt11X, pt11Y, rectWidth, rectHeight);
      fill(white);
      textFont(boxFont);
      rect(button4X, button4Y, button4Width, button4Height);
      if ( mouseX>=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) {
        fill(black);
        rect(button4X, button4Y, button4Width, button4Height);
        fill(white);
        textAlign (CENTER, CENTER);
        textFont(buttonFont, 20);
        text(clickMe, button4X, button4Y, button4Width, button4Height);
        textFont(buttonFont);
        fill(white);
       } else {
        stroke(darkPurple);
        fill(darkPurple);
        rect(button4X, button4Y, button4Width, button4Height);
        stroke(black);
        fill(white);
        textAlign (CENTER, CENTER);
        textFont(buttonFont, 20);
        text(clickMe, button4X, button4Y, button4Width, button4Height);
        textFont(buttonFont);
        fill(white);
      }
      fill(white);
    }
    else {
      image(pic7, image1X, image1Y, imageWidth, imageHeight);
      textAlign (CENTER, TOP);
      textFont(boxFont, 30);
      fill(black);
      text(box9Text, pt11X, pt11Y, rectWidth, rectHeight);
      fill(white);
      textFont(boxFont);
      rect(button4X, button4Y, button4Width, button4Height);
      if ( mouseX>=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) {
        fill(black);
        rect(button4X, button4Y, button4Width, button4Height);
        fill(white);
        textAlign (CENTER, CENTER);
        textFont(buttonFont, 20);
        text(clickMe, button4X, button4Y, button4Width, button4Height);
        textFont(buttonFont);
        fill(white);
      } else {
        stroke(darkPurple);
        fill(darkPurple);
        rect(button4X, button4Y, button4Width, button4Height);
        stroke(black);
        fill(white);
        textAlign (CENTER, CENTER);
        textFont(buttonFont, 20);
        text(clickMe, button4X, button4Y, button4Width, button4Height);
        textFont(buttonFont);
        fill(white);
      }
      fill(white);
    }
  }
  //
  //box8
  if (box8On == true) {
    textAlign (CENTER, TOP);
    textFont(boxFont, 17);
    fill(black);
    text(box8Text, pt10X, pt10Y, rectWidth, rectHeight);
    fill(white);
    textFont(boxFont);
    rect(cButton1X, cButton1Y, cButtonWidth, cButtonHeight);
    if ( mouseX>=cButton1X && mouseX<=cButton1X+cButtonWidth && mouseY>=cButton1Y && mouseY<=cButton1Y+cButtonHeight) {
      fill(black);
      rect(cButton1X, cButton1Y, cButtonWidth, cButtonHeight);
      fill(white);
      stroke(black);
    } else {
      fill(white);
      rect(cButton1X, cButton1Y, cButtonWidth, cButtonHeight);
    }
    fill(white);
    //
    rect(cButton2X, cButton2Y, cButtonWidth, cButtonHeight);
    if ( mouseX>=cButton2X && mouseX<=cButton2X+cButtonWidth && mouseY>=cButton2Y && mouseY<=cButton2Y+cButtonHeight) {
      fill(black);
      rect(cButton2X, cButton2Y, cButtonWidth, cButtonHeight);
      fill(white);
    } else {
      fill(white);
      rect(cButton2X, cButton2Y, cButtonWidth, cButtonHeight);
    }
    fill(white);
    //
    rect(cButton3X, cButton3Y, cButtonWidth, cButtonHeight);
    if ( mouseX>=cButton3X && mouseX<=cButton3X+cButtonWidth && mouseY>=cButton3Y && mouseY<=cButton3Y+cButtonHeight) {
      fill(black);
      rect(cButton3X, cButton3Y, cButtonWidth, cButtonHeight);
      fill(white);
    } else {
      fill(white);
      rect(cButton3X, cButton3Y, cButtonWidth, cButtonHeight);
    }
    fill(white);
    rect(cButton4X, cButton4Y, cButtonWidth, cButtonHeight);
    if ( mouseX>=cButton4X && mouseX<=cButton4X+cButtonWidth && mouseY>=cButton4Y && mouseY<=cButton4Y+cButtonHeight) {
      fill(black);
      rect(cButton4X, cButton4Y, cButtonWidth, cButtonHeight);
      fill(white);
    } else {
      fill(white);
      rect(cButton4X, cButton4Y, cButtonWidth, cButtonHeight);
    }
    fill(white);
    rect(cButton5X, cButton5Y, cButtonWidth, cButtonHeight);
    if ( mouseX>=cButton5X && mouseX<=cButton5X+cButtonWidth && mouseY>=cButton5Y && mouseY<=cButton5Y+cButtonHeight) {
      fill(black);
      rect(cButton5X, cButton5Y, cButtonWidth, cButtonHeight);
      fill(white);
    } else {
      fill(white);
      rect(cButton5X, cButton5Y, cButtonWidth, cButtonHeight);
    }
    fill(white);
    rect(cButton6X, cButton6Y, cButtonWidth, cButtonHeight);
    if ( mouseX>=cButton6X && mouseX<=cButton6X+cButtonWidth && mouseY>=cButton6Y && mouseY<=cButton6Y+cButtonHeight) {
      fill(black);
      rect(cButton6X, cButton6Y, cButtonWidth, cButtonHeight);
      fill(white);
    } else {
      fill(white);
      rect(cButton6X, cButton6Y, cButtonWidth, cButtonHeight);
    }
    fill(white);
   /* rect(button5X, button5Y, cButtonWidth, cButtonHeight);
    if ( mouseX>=button5X && mouseX<=button5X+cButtonWidth && mouseY>=button5Y && mouseY<=button5Y+cButtonHeight) {
      fill(black);
      rect(button5X, button5Y, cButtonWidth, cButtonHeight);
      fill(white);
      textAlign (CENTER, CENTER);
      textFont(buttonFont);
      text(clickMe, button5X, button5Y, cButtonWidth, cButtonHeight);
      fill(white);
    } else {
      stroke(darkPurple);
      fill(darkPurple);
      rect(button5X, button5Y, cButtonWidth, cButtonHeight);
      stroke(black);
      fill(white);
      textAlign (CENTER, CENTER);
      textFont(buttonFont);
      text(clickMe, button5X, button5Y, cButtonWidth, cButtonHeight);
      fill(white);
    }
    fill(white);*/
  }
  //
  //box2
  //quit
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) {
    fill(black);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    fill(white);
    textAlign (CENTER, CENTER);
    textFont(boxFont, 25);
    text(quit, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    fill(white);
    textFont(boxFont);
  } else {
    stroke(white);
    fill(white);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    stroke(black);
    fill(black);
    textAlign (CENTER, CENTER);
    textFont(boxFont, 25);
    text(quit, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    fill(white);
    textFont(boxFont);
  }
  fill(white);
  //restart
  rect(restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight);
  if ( mouseX>=restartButtonX && mouseX<=restartButtonX+restartButtonWidth && mouseY>=restartButtonY && mouseY<=restartButtonY+restartButtonHeight) {
    fill(black);
    rect(restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight);
    fill(white);
    textAlign (CENTER, CENTER);
    textFont(boxFont, 25);
    text(restart, restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight);
    fill(white);
    textFont(boxFont);
  } else {
    stroke(white);
    fill(white);
    rect(restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight);
    stroke(black);
    fill(black);
    textAlign (CENTER, CENTER);
    textFont(boxFont, 25);
    text(restart, restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight);
    fill(white);
    textFont(boxFont);
  }
  fill(white);
  //
  //box4
  if (box4On == true) {
    if (pic4On == true)
    {
      image(pic4, image4X, image4Y, imageWidth, imageHeight);
      line(pt5X, pt5Y, pt6X, pt6Y);
      textAlign (CENTER, TOP);
      textFont(boxFont, 30);
      fill(black);
      text(box4Text, pt5X, pt5Y, rectWidth, rectHeight);
      fill(white);
      textFont(boxFont);
      rect(button6X, button6Y, button6Width, button6Height);
      if ( mouseX>=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button6Height) {
        fill(black);
        rect(button6X, button6Y, button6Width, button6Height);
        fill(white);
        textAlign (CENTER, CENTER);
        textFont(buttonFont);
        text(clickMe, button6X, button6Y, button6Width, button6Height);
        fill(white);
      } else {
        stroke(#493243);
        fill(#b39fa7);
        rect(button6X, button6Y, button6Width, button6Height);
        stroke(black);
        fill(#493243);
        textAlign (CENTER, CENTER);
        textFont(buttonFont);
        text(clickMe, button6X, button6Y, button6Width, button6Height);
        fill(white);
      }
      fill(white);
    }
    else {
      image(pic10, image4X, image4Y, imageWidth, imageHeight);
      line(pt5X, pt5Y, pt6X, pt6Y);
      textAlign (CENTER, TOP);
      textFont(boxFont, 30);
      fill(black);
      text(box4Text, pt5X, pt5Y, rectWidth, rectHeight);
      fill(white);
      textFont(boxFont);
      rect(button6X, button6Y, button6Width, button6Height);
      if ( mouseX>=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button6Height) {
        fill(black);
        rect(button6X, button6Y, button6Width, button6Height);
        fill(white);
        textAlign (CENTER, CENTER);
        textFont(buttonFont);
        text(clickMe, button6X, button6Y, button6Width, button6Height);
        fill(white);
      } else {
        stroke(#493243);
        fill(#b39fa7);
        rect(button6X, button6Y, button6Width, button6Height);
        stroke(black);
        fill(#493243);
        textAlign (CENTER, CENTER);
        textFont(buttonFont);
        text(clickMe, button6X, button6Y, button6Width, button6Height);
        fill(white);
      }
      fill(white);
    }
  }
  //
  //box7
  if (box7On == true) {
    if (pic5On == true)
    {
      image(pic5, image5X, image5Y, imageWidth, imageHeight);
      line(pt9X, pt9Y, pt10X, pt10Y);
      textAlign (CENTER, TOP);
      textFont(boxFont, 30);
      fill(black);
      text(box7Text, pt9X, pt9Y, rectWidth, rectHeight);
      fill(white);
      textFont(boxFont);
      rect(button7X, button7Y, button7Width, button7Height);
      if (mouseX>=button7X && mouseX<=button7X+button7Width && mouseY>=button7Y && mouseY<=button7Y+button7Height) {
        fill(black);
        rect(button7X, button7Y, button7Width, button7Height);
        fill(white);
        textAlign (CENTER, CENTER);
        textFont(buttonFont);
        text(clickMe, button7X, button7Y, button7Width, button7Height);
        fill(white);
      } else {
        stroke(#2a443c);
        fill(#667973);
        rect(button7X, button7Y, button7Width, button7Height);
        stroke(black);
        fill(#2a443c);
        textAlign (CENTER, CENTER);
        textFont(buttonFont);
        text(clickMe, button7X, button7Y, button7Width, button7Height);
        fill(white);
      }
      fill(white);
    }
    else {
      image(pic11, image5X, image5Y, imageWidth, imageHeight);
      line(pt9X, pt9Y, pt10X, pt10Y);
      textAlign (CENTER, TOP);
      textFont(boxFont, 30);
      fill(black);
      text(box7Text, pt9X, pt9Y, rectWidth, rectHeight);
      fill(white);
      textFont(boxFont);
      rect(button7X, button7Y, button7Width, button7Height);
      if (mouseX>=button7X && mouseX<=button7X+button7Width && mouseY>=button7Y && mouseY<=button7Y+button7Height) {
        fill(black);
        rect(button7X, button7Y, button7Width, button7Height);
        fill(white);
        textAlign (CENTER, CENTER);
        textFont(buttonFont);
        text(clickMe, button7X, button7Y, button7Width, button7Height);
        fill(white);
      } else {
        stroke(#2a443c);
        fill(#667973);
        rect(button7X, button7Y, button7Width, button7Height);
        stroke(black);
        fill(#2a443c);
        textAlign (CENTER, CENTER);
        textFont(buttonFont);
        text(clickMe, button7X, button7Y, button7Width, button7Height);
        fill(white);
      }
      fill(white);
    }
  }
  //
  //box3
  if (box3On == true)
  {
    if (pic6On == true) 
    {
      image(pic12, image6X, image6Y, imageWidth, imageHeight);
      textAlign (CENTER, TOP);
      textFont(boxFont, 30);
      fill(black);
      text(box3Text, pt3X, pt3Y, rectWidth, rectHeight);
      fill(white);
      textFont(boxFont);
      line(pt3X, pt3Y, pt7X, pt7Y);
      rect(button8X, button8Y, button8Width, button8Height);
      if (mouseX>=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<=button8Y+button8Height) {
        fill(black);
        rect(button8X, button8Y, button8Width, button8Height);
        fill(white);
        textAlign (CENTER, CENTER);
        textFont(buttonFont);
        text(clickMe, button8X, button8Y, button8Width, button8Height);
        fill(white);
      } 
      else 
      {
        stroke(#645c5d);
        fill(#dfdbde); 
        rect(button8X, button8Y, button8Width, button8Height);
        stroke(black);
        fill(#645c5d);
        textAlign (CENTER, CENTER);
        textFont(buttonFont);
        text(clickMe, button8X, button8Y, button8Width, button8Height);
        fill(white);
      }
      fill(white);
    }
    else
    {
      image(pic6, image6X, image6Y, imageWidth, imageHeight);
      textAlign (CENTER, TOP);
      textFont(boxFont, 30);
      fill(black);
      text(box3Text, pt3X, pt3Y, rectWidth, rectHeight);
      fill(white);
      textFont(boxFont);
      line(pt3X, pt3Y, pt7X, pt7Y);
      rect(button8X, button8Y, button8Width, button8Height);
      if (mouseX>=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<=button8Y+button8Height) {
        fill(black);
        rect(button8X, button8Y, button8Width, button8Height);
        fill(white);
        textAlign (CENTER, CENTER);
        textFont(buttonFont);
        text(clickMe, button8X, button8Y, button8Width, button8Height);
        fill(white);
      } 
      else 
      {
        stroke(#645c5d);
        fill(#dfdbde); 
        rect(button8X, button8Y, button8Width, button8Height);
        stroke(black);
        fill(#645c5d);
        textAlign (CENTER, CENTER);
        textFont(buttonFont);
        text(clickMe, button8X, button8Y, button8Width, button8Height);
        fill(white);
      }
      fill(white);
    }
  }
  //
  //Starting pts for rect() must be 1-9 & filled black
  fill(black);
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt10X, pt10Y, ptDiameter, ptDiameter);
  ellipse(pt11X, pt11Y, ptDiameter, ptDiameter);
  //fill(white); //Best Practice
  //
  //fill(red);
  //Points for all other ellipses must be red
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
  ellipse(pt12X, pt12Y, ptDiameter, ptDiameter);
  ellipse(pt13X, pt13Y, ptDiameter, ptDiameter);
  ellipse(pt14X, pt14Y, ptDiameter, ptDiameter);
  ellipse(pt15X, pt15Y, ptDiameter, ptDiameter);
  ellipse(pt16X, pt16Y, ptDiameter, ptDiameter);
  fill(white); //Best Practice
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) box6On = true;
  if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) box1On = true;
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) box9On = true;
  if ( mouseX>=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) box4On = true;
  if ( mouseX>=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button6Height) box3On = true;
  if ( mouseX>=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<=button8Y+button8Height) box7On = true;
  if ( mouseX>=button7X && mouseX<=button7X+button7Width && mouseY>=button7Y && mouseY<=button7Y+button7Height) box8On = true;
  //
  if ( mouseX>=cButton1X && mouseX<=cButton1X+cButtonWidth && mouseY>=cButton1Y && mouseY<=cButton1Y+cButtonHeight) 
    {
      if (pic3On == false) pic3On = true;
      else if (pic3On == true) pic3On = false;
    }
  if ( mouseX>=cButton2X && mouseX<=cButton2X+cButtonWidth && mouseY>=cButton2Y && mouseY<=cButton2Y+cButtonHeight) 
    {
      if (pic6On == false) pic6On = true;
      else if (pic6On == true) pic6On = false;
    }
  if ( mouseX>=cButton3X && mouseX<=cButton3X+cButtonWidth && mouseY>=cButton3Y && mouseY<=cButton3Y+cButtonHeight) 
    {
      if (pic4On == false) pic4On = true;
      else if (pic4On == true) pic4On = false;
    }
  if ( mouseX>=cButton4X && mouseX<=cButton4X+cButtonWidth && mouseY>=cButton4Y && mouseY<=cButton4Y+cButtonHeight) 
    {
      if (pic2On == false) pic2On = true;
      else if (pic2On == true) pic2On = false;
    }
  if ( mouseX>=cButton5X && mouseX<=cButton5X+cButtonWidth && mouseY>=cButton5Y && mouseY<=cButton5Y+cButtonHeight) 
    {
      if (pic5On == false) pic5On = true;
      else if (pic5On == true) pic5On = false;
    }
  if ( mouseX>=cButton6X && mouseX<=cButton6X+cButtonWidth && mouseY>=cButton6Y && mouseY<=cButton6Y+cButtonHeight) 
    {
      if (pic1On == false) pic1On = true;
      else if (pic1On == true) pic1On = false;
    }
  //
  //
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
  if ( mouseX>=restartButtonX && mouseX<=restartButtonX+restartButtonWidth && mouseY>=restartButtonY && mouseY<=restartButtonY+restartButtonHeight) {
    box6On = false;
    box1On = false;
    box9On = false;
    box8On = false;
    box4On = false;
    box7On = false;
    box3On =false;
    pic1On=false;
    pic2On=false;
    pic3On=false;
    pic4On=false;
    pic5On=false;
    pic6On=false;
  }//End reset
}//End mousePressed
//
//End MAIN Program
