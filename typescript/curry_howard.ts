// @ts-check

// 'tsc --build' to compile

type Pair<A, B> = <P,>(_ : (_ : A) => (_ : B) => P) => P;

type Either<A, B> = <P,>(_ : (_ : A) => P) => (_ : (_ : B) => P) => P;

const c1 : <A, B>(_ : Pair<A, B>) => Either<A, B> = ???;

const c2 : <A, B, C>(_ : Pair<Pair<(_ : A) => C, (_ : B) => C>, Either<A, B>>) => C = ???;

const c3 : <A, B, C>(_ : (_ : Either<B, C>) => A) => Pair<(_ : B) => A, (_ : C) => A> = ???;

const c4 : <A, B, C>(_ : Pair<A, Either<B, C>>) => Either<Pair<A, B>, Pair<A, C>> = ???;
