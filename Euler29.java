import java.util.*;
public class Euler29 {
	public static void main(String args[]) {
		List<Long> results = new LinkedList<Long>();
		for(int a = 2; a <=100; a++) {
			for (int b = 2; b<=100; b++) {
				results.add((long)Math.pow(a,b));
			}
		}
		System.out.println(results.size());
	}
}
