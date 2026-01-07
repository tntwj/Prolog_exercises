# 🧩 Prolog Logic Exercises

![Prolog](https://img.shields.io/badge/Language-Prolog-orange)
![License](https://img.shields.io/badge/license-MIT-blue)

A collection of Prolog predicates and logic puzzles designed to practice list processing, term manipulation, and knowledge base extraction.

## 📂 Repository Structure

The solutions are separated into individual files to distinguish between the different `filter` predicate definitions requested in the exercises.

| File | Description |
| :--- | :--- |
| `ex1_odd_positions.pl` | Extract elements from odd positions in a list. |
| `ex2_intersection.pl` | Filter elements appearing in both lists (set intersection). |
| `ex3_term_mod.pl` | Modify specific terms (e.g., `p(X)`) within a list. |
| `ex4_frequency.pl` | Filter elements based on frequency of appearance. |
| `ex5_kb_extraction.pl` | Extract unique entities from a `parent/2` knowledge base. |

## 🚀 Getting Started

### Prerequisites
You will need a Prolog interpreter to run these files. **SWI-Prolog** is recommended.

* [Download SWI-Prolog](https://www.swi-prolog.org/Download.html)

### How to Run
1.  Clone this repository.
2.  Open your terminal.
3.  Launch SWI-Prolog with a specific file:
    ```bash
    swipl -s ex1_odd_positions.pl
    ```
4.  Run the test queries provided below.

---

## 📚 Problem Descriptions

### 1. Elements in Odd Positions
**Goal:** Define `inOddPositions(L1, L2)` which returns `L2` containing elements of `L1` located at indices 1, 3, 5, etc.

**Usage:**
```prolog
?- inOddPositions([2,4,6,8,10,12], X).
% Output: X = [2, 6, 10]

```

### 2. Intersection Filter

**Goal:** Define `filter(L1, L2, L3)`. `L3` must contain elements present in **both** `L1` and `L2`, without repetitions.

**Usage:**

```prolog
?- filter([1,3,4,3], [4,5,3,7,3], L3).
% Output: L3 = [4, 3]

```

### 3. Term Modification

**Goal:** Define `filter(L1, L2)`. Copy terms from `L1` to `L2`, but if a term is `p(X)` where `X` is a number, transform it to `p(Y)` where `Y = X + 1`.

**Usage:**

```prolog
?- filter([p(1), 3, p(4), p(X)], L2).
% Output: L2 = [p(2), 3, p(5), p(X)]

```

### 4. Frequency Filter (Strictly > 1)

**Goal:** Define `filter(L1, L2, L3)`. `L3` contains terms from `L1` that appear strictly more than once in `L2`.

**Usage:**

```prolog
?- filter([a, 3, b], [a, a, p(X), 3], L3).
% Output: L3 = [a]

```

### 5. Knowledge Base Entity Extraction

**Goal:** Given a KB of `parent/2`, define `people(L)` to return a list of all unique individuals mentioned (both parents and children).

**Usage:**

```prolog
% Given KB:
parent(francesco, federico).
parent(chiara, federico).
parent(francesco, elena).

?- people(L).
% Output: L = [chiara, federico, francesco, elena]

```
