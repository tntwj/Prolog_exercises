# Prolog Programming Exercises

## 1. Odd Positions in a List

**Task:** Define a Prolog predicate `inOddPositions(L1, L2)` that is true when `L2` is the list containing the elements of the list `L1` that are positioned in an odd position (1st, 3rd, 5th, etc.).

**Examples:**

```prolog
?- inOddPositions([2,4,6,8,10,12], X). 
X = [2, 6, 10] 

?- inOddPositions([], X). 
X = [] 

?- inOddPositions([42], X). 
X = [42] 

?- inOddPositions([1,2,3], [1,3]). 
yes 

?- inOddPositions([1,2,3], [1]). 
no
```

---

## 2. List Intersection (No Repetitions)

**Task:** Define a Prolog predicate `filter/3` that receives two lists, `L1` and `L2` (containing ground elements), as input and returns a list `L3`.

- `L3` must contain all elements appearing in both `L1` and `L2`.
- `L3` must not contain repetitions.

**Note:** Report any auxiliary predicate used in the solution.

**Example:**

```prolog
:- filter([1,3,4,3], [4,5,3,7,3], L3). 
% Expected outcome:
L3 = [4, 3]
```

---

## 3. Term Modification

**Task:** Define a Prolog predicate `filter/2` that receives a list `L1` of terms as input and returns a list `L2`.

- `L2` contains all terms appearing in `L1`.
- **Transformation Rule:** Whenever a term is of the type `p(X)` with `X` being a ground number, the resulting list `L2` should insert a term `p(Y)` where `Y` is `X` incremented by one unit.

**Hint:** To determine if a term `X` is a ground number, use the predefined predicate `number/1`.

**Example:**

```prolog
:- filter([p(1), 3, p(4), p(X)], L2). 
% Expected outcome:
L2 = [p(2), 3, p(5), p(X)]
```

---

## 4. Frequency Filter (Strictly > 1)

**Task:** Define a Prolog predicate `filter/3` that receives two lists `L1` and `L2` of ground terms and returns a list `L3`.

- The list `L3` will contain the terms of `L1` that appear strictly more than once in `L2`.

**Example:**

```prolog
:- filter([a, 3, b], [a, a, p(X), 3], L3). 
% Expected outcome:
L3 = [a]
```

---

## 5. Knowledge Base Extraction

**Task:** A knowledge base of predicates `parent/2` is given, describing the relation between two persons (e.g., `parent(francesco, federico)` means that francesco is the son of federico).

Define a Prolog predicate `people/1` that returns a list `L` of the people mentioned in the knowledge base, without repetitions.

**Example Knowledge Base:**

```prolog
parent(francesco, federico). 
parent(chiara, federico). 
parent(francesco, elena). 
```

**Query:**

```prolog
:- people(L). 
% Expected outcome:
L = [chiara, federico, francesco, elena]
```