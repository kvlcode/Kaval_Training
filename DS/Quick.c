// Quicksort in C language 
//11-01-2022

#include<stdio.h>

void Quick(int arr[25],int first,int last)
{
   int i, j, pivot, temp;

   if(first<last)
   {
      pivot=first;
      i=first;
      j=last;

      while(i<j)
      {
         while(arr[i]<=arr[pivot] && i<last) // Compare i with pivot  i should not be greater than last
            i++;

         while(arr[j]>arr[pivot])     // Compare j with pivot 
            j--;

         if(i<j)                 // if i&j not crossed
         {
            temp=arr[i];        // value of i swap with value of j 
            arr[i]=arr[j];
            arr[j]=temp;
         }
      }
                        // if i&j crossed
      temp=arr[pivot];      // swap value of j with pivot
      arr[pivot]=arr[j];
      arr[j]=temp;

      Quick(arr,first,j-1);
      Quick(arr,j+1,last);

   }
}

void main()
{  
   
    int i, len, arr[25];

  printf("How many elements are u going to enter?:");
   scanf("%d",&len);

   printf("Enter %d elements: ", len);
   
   for(i=0;i<len;i++)
      scanf("%d",&arr[i]);

   Quick(arr,0,len-1);

   printf("Order of Sorted elements: ");
   for(i=0;i<len;i++)
      printf(" %d",arr[i]);


}
