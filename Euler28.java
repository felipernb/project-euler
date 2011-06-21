public class Euler28 {

	public static void main(String args[]) {

		int sum = 1;
		int maxNumber = 1001*1001;
		int gap = 2;
		int j = 1;
		for (int i = 3; i <= maxNumber; i+=gap) {
			if (j++ % 4 ==0) gap +=2;
			sum += i;
		}

		System.out.println(sum);

	}

}

