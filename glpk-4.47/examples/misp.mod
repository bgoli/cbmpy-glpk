/* MISP, Maximum Independent Set Problem */

/* Written in GNU MathProg by Andrew Makhorin <mao@gnu.org> */

/* Let G = (V,E) be an undirected graph with vertex set V and edge set
   E. Vertices u, v in V are non-adjacent if (u,v) not in E. A subset
   of the vertices S within V is independent if all vertices in S are
   pairwise non-adjacent. The Maximum Independent Set Problem (MISP) is
   to find an independent set having the largest cardinality. */

param n, integer, > 0;
/* number of vertices */

set V := 1..n;
/* set of vertices */

set E within V cross V;
/* set of edges */

var x{i in V}, binary;
/* x[i] = 1 means vertex i belongs to independent set */

s.t. edge{(i,j) in E}: x[i] + x[j] <= 1;
/* if there is edge (i,j), vertices i and j cannot belong to the same
   independent set */

maximize obj: sum{i in V} x[i];
/* the objective is to maximize the cardinality of independent set */

data;

/* These data corresponds to the test instance from:

   M.G.C. Resende, T.A.Feo, S.H.Smith, "Algorithm 787 -- FORTRAN
   subroutines for approximate solution of the maximum independent set
   problem using GRASP," Trans. on Math. Softw., Vol. 24, No. 4,
   December 1998, pp. 386-394. */

/* The optimal solution is 7 */

param n := 50;

set E :=
 1 2
 1 3
 1 5
 1 7
 1 8
 1 12
 1 15
 1 16
 1 19
 1 20
 1 21
 1 22
 1 28
 1 30
 1 34
 1 35
 1 37
 1 41
 1 42
 1 47
 1 50
 2 3
 2 5
 2 6
 2 7
 2 8
 2 9
 2 10
 2 13
 2 17
 2 19
 2 20
 2 21
 2 23
 2 25
 2 26
 2 29
 2 31
 2 35
 2 36
 2 44
 2 45
 2 46
 2 50
 3 5
 3 6
 3 8
 3 9
 3 10
 3 11
 3 14
 3 16
 3 23
 3 24
 3 26
 3 27
 3 28
 3 29
 3 30
 3 31
 3 34
 3 35
 3 36
 3 39
 3 41
 3 42
 3 43
 3 44
 3 50
 4 6
 4 7
 4 9
 4 10
 4 11
 4 13
 4 14
 4 15
 4 17
 4 21
 4 22
 4 23
 4 24
 4 25
 4 27
 4 28
 4 30
 4 31
 4 33
 4 34
 4 35
 4 36
 4 37
 4 38
 4 40
 4 41
 4 42
 4 46
 4 49
 5 6
 5 11
 5 14
 5 21
 5 24
 5 25
 5 28
 5 35
 5 38
 5 39
 5 41
 5 44
 5 49
 5 50
 6 8
 6 9
 6 10
 6 13
 6 14
 6 16
 6 17
 6 19
 6 22
 6 23
 6 26
 6 27
 6 30
 6 34
 6 35
 6 38
 6 39
 6 40
 6 41
 6 44
 6 45
 6 47
 6 50
 7 8
 7 9
 7 10
 7 11
 7 13
 7 15
 7 16
 7 18
 7 20
 7 22
 7 23
 7 24
 7 25
 7 33
 7 35
 7 36
 7 38
 7 43
 7 45
 7 46
 7 47
 8 10
 8 11
 8 13
 8 16
 8 17
 8 18
 8 19
 8 20
 8 21
 8 22
 8 23
 8 24
 8 25
 8 26
 8 33
 8 35
 8 36
 8 39
 8 42
 8 44
 8 48
 8 49
 9 12
 9 14
 9 17
 9 19
 9 20
 9 23
 9 28
 9 30
 9 31
 9 32
 9 33
 9 34
 9 38
 9 39
 9 42
 9 44
 9 45
 9 46
 10 11
 10 13
 10 15
 10 16
 10 17
 10 20
 10 21
 10 22
 10 23
 10 25
 10 26
 10 27
 10 28
 10 30
 10 31
 10 32
 10 37
 10 38
 10 41
 10 43
 10 44
 10 45
 10 50
 11 12
 11 14
 11 15
 11 18
 11 21
 11 24
 11 25
 11 26
 11 29
 11 32
 11 33
 11 35
 11 36
 11 37
 11 39
 11 40
 11 42
 11 43
 11 45
 11 47
 11 49
 11 50
 12 13
 12 16
 12 17
 12 19
 12 24
 12 25
 12 26
 12 30
 12 31
 12 32
 12 34
 12 36
 12 37
 12 39
 12 41
 12 44
 12 47
 12 48
 12 49
 13 15
 13 16
 13 18
 13 19
 13 20
 13 22
 13 23
 13 24
 13 27
 13 28
 13 29
 13 31
 13 33
 13 35
 13 36
 13 37
 13 44
 13 47
 13 49
 13 50
 14 15
 14 16
 14 17
 14 18
 14 19
 14 20
 14 21
 14 26
 14 28
 14 29
 14 30
 14 31
 14 32
 14 34
 14 35
 14 36
 14 38
 14 39
 14 41
 14 44
 14 46
 14 47
 14 48
 15 18
 15 21
 15 22
 15 23
 15 25
 15 28
 15 29
 15 30
 15 33
 15 34
 15 36
 15 37
 15 38
 15 39
 15 40
 15 43
 15 44
 15 46
 15 50
 16 17
 16 19
 16 20
 16 25
 16 26
 16 29
 16 35
 16 38
 16 39
 16 40
 16 41
 16 42
 16 44
 17 18
 17 19
 17 21
 17 22
 17 23
 17 25
 17 26
 17 28
 17 29
 17 33
 17 37
 17 44
 17 45
 17 48
 18 20
 18 24
 18 27
 18 28
 18 31
 18 32
 18 34
 18 35
 18 36
 18 37
 18 38
 18 45
 18 48
 18 49
 18 50
 19 22
 19 24
 19 28
 19 29
 19 36
 19 37
 19 39
 19 41
 19 43
 19 45
 19 48
 19 49
 20 21
 20 22
 20 24
 20 25
 20 26
 20 27
 20 29
 20 30
 20 31
 20 33
 20 34
 20 35
 20 38
 20 39
 20 41
 20 42
 20 43
 20 44
 20 45
 20 46
 20 48
 20 49
 21 22
 21 23
 21 29
 21 31
 21 35
 21 38
 21 42
 21 46
 21 47
 22 23
 22 26
 22 27
 22 28
 22 29
 22 30
 22 39
 22 40
 22 41
 22 42
 22 44
 22 45
 22 46
 22 47
 22 49
 22 50
 23 28
 23 31
 23 32
 23 33
 23 34
 23 35
 23 36
 23 39
 23 40
 23 41
 23 42
 23 44
 23 45
 23 48
 23 49
 23 50
 24 25
 24 27
 24 29
 24 30
 24 31
 24 33
 24 34
 24 38
 24 42
 24 43
 24 44
 24 49
 24 50
 25 26
 25 27
 25 29
 25 30
 25 33
 25 34
 25 36
 25 38
 25 40
 25 41
 25 42
 25 44
 25 46
 25 47
 25 48
 25 49
 26 28
 26 31
 26 32
 26 33
 26 37
 26 38
 26 39
 26 40
 26 41
 26 42
 26 45
 26 47
 26 48
 26 49
 27 29
 27 30
 27 33
 27 34
 27 35
 27 39
 27 40
 27 46
 27 48
 28 29
 28 37
 28 40
 28 42
 28 44
 28 46
 28 47
 28 50
 29 35
 29 38
 29 39
 29 41
 29 42
 29 48
 30 31
 30 32
 30 35
 30 37
 30 38
 30 40
 30 43
 30 45
 30 46
 30 47
 30 48
 31 33
 31 35
 31 38
 31 40
 31 41
 31 42
 31 44
 31 46
 31 47
 31 50
 32 33
 32 35
 32 39
 32 40
 32 46
 32 49
 32 50
 33 34
 33 36
 33 37
 33 40
 33 42
 33 43
 33 44
 33 45
 33 50
 34 35
 34 36
 34 37
 34 38
 34 40
 34 43
 34 44
 34 49
 34 50
 35 36
 35 38
 35 41
 35 42
 35 43
 35 45
 35 46
 35 47
 35 49
 35 50
 36 37
 36 39
 36 40
 36 41
 36 42
 36 43
 36 48
 36 50
 37 38
 37 41
 37 43
 37 46
 37 47
 37 48
 37 49
 37 50
 38 41
 38 45
 38 46
 38 48
 38 49
 38 50
 39 43
 39 46
 39 47
 39 48
 39 49
 40 43
 40 45
 40 48
 40 50
 41 42
 41 43
 41 44
 41 45
 41 46
 41 48
 41 49
 42 43
 42 44
 42 46
 42 48
 42 49
 43 45
 43 46
 43 48
 43 50
 44 45
 44 48
 45 46
 45 47
 45 48
 46 49
 47 49
 47 50
 48 49
 48 50
 49 50
;

end;
