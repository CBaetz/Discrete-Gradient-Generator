// Constants
int _length = 50;
int _width = 50;
int _s = 100000;

// Variables
int[][] board = new int[_length][_width];

// Filling half
for(int i = 0; i < _length / 2; i++){
  for(int j = 0; j < _width; j++){
    board[i][j] = 1;
  }
}

// Swapping
for(int s = 0; s < _s; s++){
  boolean vertical = (0 == floor(random(0,2)));
  if(vertical){
    int x = floor(random(0,_length));
    int y = floor(random(0,_width - 1));
    int temp = board[x][y];
    board[x][y] = board[x][y+1];
    board[x][y+1] = temp;
  }else{
    int x = floor(random(0,_length - 1));
    int y = floor(random(0,_width));
    int temp = board[x][y];
    board[x][y] = board[x+1][y];
    board[x+1][y] = temp;
  }
}

// Printing
for(int i = 0; i < _length; i++){
  for(int j = 0; j < _width; j++){
    if(board[i][j] == 0){
      print("X");
    }else{
      print(" ");
    }
  }
  println();
}

//Exiting
exit();
