// Binary Search 
//11-01-2022

class binarySearch {
    int bSearch(int arr[], int x, int low, int high) {
  
      
      while (low <= high) {                 
        int mid = low + (high - low) / 2;     //Calculate middle
  
        if (arr[mid] == x)
          return mid;
  
        else if (arr[mid] < x)
          low = mid+1;
  
        else
          high = mid-1;
      }
  
      return 0;
    }
  
    public static void main(String args[]) {
      binarySearch bs = new binarySearch();    // make object
      int arr[] = { 3, 4, 5, 6, 7, 8, 9 };
      int n = arr.length;
      int x = 4;
      int found = bs.bSearch(arr, x, 0, n - 1);     // call function
      
      if (found == 0){
        System.out.println("Element not found");
      }
        else
      {  
        System.out.println("Element found at index " + found);
      }
      }
  }