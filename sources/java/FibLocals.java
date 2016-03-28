// http://juick.com/Balancer/2826712

class FibLocals
{
	private final int val;

	public FibLocals(final int val)
	{
		this.val = val;
	}

	public int value()
	{
		int val = this.val;
		int result = 1;

		if(val > 2)
			result = new FibLocals(val - 1).value() + new FibLocals(val - 2).value();

		return result;
	}

	public static void  main(String[] arg)
	{
		for (int i = 0; i < 10; ++i)
		{
			FibLocals fib = new FibLocals(40);
			System.out.println(fib.value());
		}
	}
}
