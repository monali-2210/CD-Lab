%s A DEAD


%{
int initial = 0;
int d = 0;
%} 
  
%% 
<INITIAL>"hundred"   {initial=initial+d*99;}
<INITIAL>"one"       {d = 1;initial+=d;}
<INITIAL>"two"       {d = 2;initial+=d;} 
<INITIAL>"three"     {d = 3;initial+=d;}
<INITIAL>"four"      {d = 4;initial+=d;}
<INITIAL>"five"      {d = 5;initial+=d;}
<INITIAL>"six"       {d = 6;initial+=d;}
<INITIAL>"seven"     {d = 7;initial+=d;}
<INITIAL>"eight"     {d = 8;initial+=d;} 
<INITIAL>"nine"      {d = 9;initial+=d;}
<INITIAL>"ten"       {d = 10;initial+=d;}
<INITIAL>"eleven"    {d = 11;initial+=d;}
<INITIAL>"twelve"    {d = 12;initial+=d;}  
<INITIAL>"thirteen"  {d = 13;initial+=d;}   
<INITIAL>"fourteen"  {d = 14;initial+=d;}   
<INITIAL>"fifteen"   {d = 15;initial+=d;}   
<INITIAL>"sixteen"   {d = 16;initial+=d;}   
<INITIAL>"seventeen" {d = 17;initial+=d;}   
<INITIAL>"eighteen"  {d = 18;initial+=d;}  
<INITIAL>"nineteen"  {d = 19;initial+=d;}  
<INITIAL>"twenty"    {d = 20;initial+=d;}  
<INITIAL>"thirty"    {d = 30;initial+=d;}
<INITIAL>"fourty"    {d = 40;initial+=d;}
<INITIAL>"fifty"     {d = 50;initial+=d;}
<INITIAL>"sixty"     {d = 60;initial+=d;}
<INITIAL>"seventy"   {d = 70;initial+=d;}
<INITIAL>"eighty"    {d = 80;initial+=d;}       
<INITIAL>"ninety"    {d = 90;initial+=d;}      
\n    {return 0;} 
%% 

int yywrap(){} 
int main(){ 

printf("Enter string in lowercase: \n");
  yylex(); 
  printf("\n%d\n",initial);
  return 0; 
}
