%{
#include<stdio.h>
#include<string.h>

int num =0;
%}

%%
one {num+=1;}
two {num+=2;}
three {num+=3;}
four {num+=4;}
five {num+=5;}
six {num+=6;}
seven {num+=7;}
eight {num+=8;}
nine {num+=9;}
ten {num+=10;}
elven {num = 11;}
twelve {num = 12;}
thirteen {num = 13;}
fourteen {num = 14;}
fifeteen {num = 15;}
sixteen {num = 16;}
seventeen {num = 17;}
eighteen {num = 18;}
nineteen {num = 19;}
twenty {num += 20;}


\n {printf("Answer: %d\n", num); num = 0;}
%%

int main()
{
	printf("Enter: \n");
	yylex();
	
	return 0;
}
