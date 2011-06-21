public class Euler30 {
	public static void main(String[] args) {
		int power = 5;
		int sum = 0;
		for (int i = 10; i < 531441; i++) { //531441 is the max sum of a 9-digit number
			if (sumOfDigits(i, power) == i) {
				sum += i;
			}
		}
		System.out.println(sum);
	}

	private static int sumOfDigits(int x, int power) {
		String n = Integer.toString(x);
		int sum = 0;
		for (int i = 0; i < n.length(); i++) {
			sum += (int) Math.pow(Integer.parseInt(n.substring(i,i+1)), power);
		}
		return sum;
	}
}

