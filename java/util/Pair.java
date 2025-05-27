package util;

import java.util.function.Function;

@FunctionalInterface
public interface Pair<X, Y> {
    <P> P apply(final Function<X, Function<Y, P>> f);
}
