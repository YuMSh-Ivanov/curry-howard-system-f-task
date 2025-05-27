package util;

import java.util.function.Function;

@FunctionalInterface
public interface Either<X, Y> {
    <P> Function<Function<Y, P>, P> apply(final Function<X, P> f);
}
