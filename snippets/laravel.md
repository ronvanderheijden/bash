```php

\Illuminate\Support\Facades\DB::listen(static fn ($q) => print $q->sql . PHP_EOL);

```
