#include<stdio.h>
void quicksort(int n, int* v){
	if(n<=1)
	return;
	else{
		int x = v[0]; int a = 1; int b = n-1;
		do{
			while(a<n && v[a]<=x)a++;
			while(v[b]>x)b--;
			if( a < b ){
				int temp=v[a];
				v[a]=v[b]; v[b]=temp;a++;b--;
			}
		}while(a<=b);
		v[0]= v[b]; v[b]=x;
		
		quicksort(b, v);
		quicksort(n-a,&v[a]);
	}
}
int main()
{
	int i, N=8;
	int vetor[]={25,48,37,12,57,86,33,92};
	
	quicksort(N, vetor);
	
	printf("O vetor ordenado eh:\n");
	for(i=0;i<N;i++){
		printf("%d\t",vetor[i]);
	}
	return 0;
}
