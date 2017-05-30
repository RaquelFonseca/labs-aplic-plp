#include <stdio.h>

int contaVogais(char palavra[]) {
    char vogais[] = "aeiouAEIOU";
    int numVogais = 0, i, j;

    for (i = 0; palavra[i] != '\0'; i++) {
        for (j = 0; vogais[j] != '\0'; j++) {
            if (vogais[j] == palavra[i]) {
                numVogais++;
                break;
            }
        }
    }
    return numVogais;
}




int main()
{

char palavra[20];
char palavrasIngratas[3][20];

int contaPalavras = 0;
int contaPalavrasIngratas = 0;

	while (contaPalavrasIngratas < 3) {
 		printf("Palavra: ");

 		scanf("%s", palavra);
 		if (contaVogais(palavra) == 0) {
			strcpy(palavrasIngratas[contaPalavrasIngratas], palavra);
   			contaPalavrasIngratas++;
		}
	}
    int i;
	for(i = 0; i < 3; i++) {

		printf("%s\n", palavrasIngratas[i]);

	}
}
