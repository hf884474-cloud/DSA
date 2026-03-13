import java.util.Scanner;

public class p6 {
static Scanner sc = new Scanner(System.in);
static int[] arr = new int[100]; 
static int n; 

public static void main(String[] args) {
input();
System.out.print("Array before: ");
display();
deleteMultiple();
System.out.print("Current Array: ");
display();
}

public static void input() {
System.out.print("Enter number of elements: ");
n = sc.nextInt();
if (n < 1 || n > 100) {
System.out.println("Invalid size. Terminating program.");
System.exit(0); 
}
System.out.println("Enter " + n + " elements:");
for (int i = 0; i < n; i++) {
arr[i] = sc.nextInt();
}
}
public static void deleteMultiple() {
if (n == 0) {
System.out.println("Underflow");
return;
}
System.out.print("Enter the starting position to delete from: ");
int pos = sc.nextInt();
System.out.print("How many elements to delete? ");
int num = sc.nextInt();
if (pos < 0 || pos >= n) {
System.out.println("Invalid position.");
return;
}
if (pos + num > n) {
num = n - pos;
}
for (int i = pos; i < n - num; i++) {
arr[i] = arr[i + num];
}
n -= num; 
System.out.println("Deleted " + num + " elements successfully.");
}

public static void display() {
if (n == 0) {
System.out.println("Array is empty.");
return;
}
for (int i = 0; i < n; i++) {
System.out.print(arr[i] + " ");
}
System.out.println();
}
}
