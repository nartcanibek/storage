#include <stdio.h>
#include <stdlib.h>
int nextloc(int location_y,int move_direction)
{
    if(move_direction == 1)
    {
        if(location_y >= 1)
            --location_y;

    }
    if(move_direction == 2)
    {
        if(location_y <= 5)
            ++location_y;

    }
printf("%d\n",location_y);
    return location_y;
}

int main() {
    printf("Hello, World!\n");
    int inputKey=0;
    char player[8] = {'*','_','*','\n','/','-','\''};
    char target[10] = {'|','*','|','_','*','\n','/','-','\''};
    char bullet[8] = {'-','>'};
    int player_y = 1;
    int target_y = 9;
    int bullet_x = 2;
    int bullet_y = 0;
    int skor = 0;
    int bitti = 0;

    //srand((unsigned) time(&t));
  while (1)
  {
      scanf("%d",&inputKey);
	  if(skor == 5)
		  ++bitti;
	  		  //NOKIA_Out(3,6,"kazandınız");

	  	  else if (skor < 5)
	  	  {
	  	      printf("a");
	  	  //NOKIA_Out(1,player_y, player);
	  	  //NOKIA_Out(5,target_y, target);


	  	  	  if (inputKey == 2)
	  	 		  player_y = nextloc(player_y,1);
	  	 	  if (inputKey == 5)
	  	 		  player_y = nextloc(player_y,2);

	  	 	  target_y = nextloc(target_y,rand()%3);



	  	 	  if(bullet_y != 0)
	  	 	  {

	  	 		 //NOKIA_Out(bullet_x,bullet_y, bullet);
	  	 		 ++bullet_x;

	  	 	  }
              if (inputKey == 3)
                  bullet_y = player_y;

	  	 	  if (bullet_x == 5)
	  	 	  {
	  	 		  if(bullet_y == target_y) ++skor;

	  	 		  bullet_x = 2;
	  	 		  bullet_y = 0;

	  	 	  }


	  	 	 if (inputKey == 8)
	  	 		{

	  	 		 //NOKIA_Out(3,6, &skor);
	  	 		 player_y = 1;
	  	 		 target_y = 9;
	  	 		 bullet_x = 2;
	  	 		 bullet_y = 0;

	  	 		}

	  	  }

	  	 	printf("player y:%d\n",player_y);
            printf("target y:%d\n",target_y);
            printf("bullet x:%d\n",bullet_x);
            printf("bullet y:%d\n",bullet_y);
            printf("skor:%d\n",skor);

	    }



    return 0;
}
