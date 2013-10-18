# http://www.balancer.ru/g/p1630772

package fib;

BEGIN{}

	sub new
	{
		my $self={};
		bless($self);
		shift;
		$self->{_value}=shift;
		return $self;
	}

	sub value
	{
		my $self = shift;

		$_value = $self->{_value};

		if($_value <= 2) {
			return 1;
		}

		my $f1=fib->new($_value - 1);
		my $f2=fib->new($_value - 2);

		return $f1->value() + $f2->value();
	}

	return 1;

END{}
