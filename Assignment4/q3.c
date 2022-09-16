
#include <stdio.h>
#include <ctype.h>


typedef struct {
    int value;
    const char* context;
} expression_t;

expression_t expression(int value, const char* context) {
    return (expression_t) { value, context };
}


expression_t eval_expression(const char* symbols);

expression_t eval_number(const char* symbols) {
 
    double number = 0;        
    while (isdigit(*symbols)) {
        number = 10 * number + (*symbols - '0');
        symbols++;
    }
    return expression(number, symbols);
}

expression_t eval_term(const char* symbols) {
    // term -> number | expression
    expression_t number = eval_number(symbols);
    return number.context != symbols ? number : eval_expression(symbols);
}

expression_t eval_product(const char* symbols) {
    // product -> term | term "*" product
    expression_t term = eval_term(symbols);
    if (*term.context != '*')
        return term;

    expression_t product = eval_product(term.context + 1);
    return expression(term.value * product.value, product.context);
}

expression_t eval_difference(const char* symbols) {
    // sum -> product | product "+" sum
    expression_t product = eval_product(symbols);
    if (*product.context != '-')
        return product;

    expression_t sum = eval_difference(product.context +1);
    return expression(product.value - sum.value, sum.context);
}

expression_t eval_sum(const char* symbols) {
    // sum -> product | product "+" sum
    expression_t product = eval_product(symbols);
    if (*product.context != '+')
        return product;

    expression_t sum = eval_sum(product.context + 1);
    return expression(product.value + sum.value, sum.context);
}

expression_t eval_expression(const char* symbols) {
    // expression -> sum
    return eval_sum(symbols);
}

/* end: parsers */

int main() {
    printf("Enter The operation:\n");
    char expression[100];
    scanf("%s",expression);
    printf("eval(\"%s\") == %d\n", expression, eval_expression(expression).value);

    return 0;
}
