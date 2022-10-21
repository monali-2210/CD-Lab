%{
    #include<stdio.h>
    #include<stdlib.h>
%}


/* Rule Section */
%%
start: line
     | start line
     ;

line: 'a' 'b' 'c' '\n' { if ($1 == $2 && $2 == $3)
                           printf("Matches the given language!\n", stderr);
                         else
                           printf("Does not match the given language!\n", stderr);
                       }
%%


int yyerror(char *msg)
{
    printf("Invalid String\n");
    exit(0);
}

main()
{
    printf("Enter the String\n");
    yyparse();
}
