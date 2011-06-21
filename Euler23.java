import java.util.Set;
import java.util.TreeSet;

public class Euler23 {

	private static int abundants[] = new int[28123]; 
	
	public static void main(String args[]) {
		int sum = 0;
		for (int i = 0; i < 28123; i++) {
			sum += isSumOfAbundants(i)?0:i;
		}
		System.out.println(sum);
	}

	private static boolean isAbundant(int n) {
		if (abundants[n] == 0) {
			int sum = 0;
			for(int x : divisors(n)) {
				sum += x;
			}
			abundants[n] = sum > n?1:-1;
		}
		return abundants[n] == 1;
	}

	private static boolean isSumOfAbundants(int n) {
		for (int i = 1; i <= n/2; i++) {
			if (isAbundant(i) && isAbundant(n-i)) return true;
		}
		return false;
	}

	private static Set<Integer> divisors(int n) {
		Set<Integer> divisors = new TreeSet<Integer>();
		for (int i = 1; i <= n/2; i++) {
			if (n % i == 0) {
				divisors.add(i);
				if (i != 1) divisors.add(n/i);
			}
		}
		return divisors;

	}
}
