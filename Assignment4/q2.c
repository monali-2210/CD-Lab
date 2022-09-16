#include<stdio.h>
#include<stdlib.h>
#include<string.h>


void main(){
    
	char a[20],a1[20],a2[20],a3[20],a4[20],a5[20];
	int i,j=0,k,l;
	printf("enter any productions A->");
	fgets(a, 15, stdin);
	printf("Hello!");
	for(i=0;a[i]!='|';i++,j++)
		a1[j]=a[i];
	a1[j]='\0';
	for(j=++i,i=0;a[j]!='\0';j++,i++)
		a2[i]=a[j];
	a2[i]='\0';
	k=0;
	l=0;
	for(i=0;i<strlen(a1)||i<strlen(a2);i++){
		if(a1[i]==a2[i]){
			a3[k]=a1[i];
			k++;
		}
		else{
			a4[l]=a1[i];
			a5[l]=a2[i];
			l++;
		}
	}
	a3[k]='X';
	a3[++k]='\0';
	a4[l]='|';
	a5[l]='\0';
	a4[++l]='\0';
	strcat(a4,a5);
	printf("Hello!");
	printf("\n A->%s",a3);
	printf("\n X->%s",a4);
	printf("\n");
}
