package fib;

sub new
{
	my ($class, $value) = @_;
	return bless { "_value" => $value }, $class;
}

sub value
{
	my $_value = shift->{_value};

	if($_value <= 2) {
		return 1;
	}

	return fib::->new($_value-1)->value() + fib::->new($_value-2)->value();
}

1;