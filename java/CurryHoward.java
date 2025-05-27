import util.Either;
import util.Pair;

import java.util.function.Function;

public class CurryHoward {
    // no generic values, so create function returning it

    public static <A, B> Function<Pair<A, B>, Either<A, B>> c1() {
        return ???;
    }

    public static <A, B, C> Function<Pair<Pair<Function<A, C>, Function<B, C>>, Either<A, B>>, C> c2() {
        return ???;
    }

    public static <A, B, C> Function<Function<Either<B, C>, A>, Pair<Function<B, A>, Function<C, A>>> c3() {
        return ???;
    }

    public static <A, B, C> Function<Pair<A, Either<B, C>>, Either<Pair<A, B>, Pair<A, C>>> c4() {
        return ???;
    }
}
