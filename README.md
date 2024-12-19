# Economic Dispatching by Bees Algorithm
- Economic Dispatching by Bees Algorithm


![Economic Dispatching by Bees Algorithm](https://user-images.githubusercontent.com/11339420/184432258-c29b9a6f-70ce-45be-8890-abbe8992e77c.jpg)



This repository contains MATLAB implementations for solving the Economic Dispatch (ED) problem using the Bees Algorithm (BA) with additional integration of Fuzzy Logic for optimization. The ED problem aims to allocate power generation among multiple plants to minimize cost while meeting demand and operational constraints.

## Files in This Repository

1. **`BeeDance.m`**
   - Implements the Bee Dance mechanism for the Bees Algorithm.

2. **`BeesEconomicDispatching.m`**
   - Main script for solving the ED problem using the Bees Algorithm.

3. **`Cost.m`**
   - Defines the cost function for the ED problem.

4. **`MakeModel.m`**
   - Creates the system model, including plant parameters, power demand, and constraints.

5. **`MCalc.m`**
   - Calculates metrics like total cost, power loss, and power balance violations.

6. **`Parse.m`**
   - Ensures solutions respect plant constraints and corrects violations in generation limits.

---

## How the Code Works

### 1. **Economic Dispatch (ED)**
Economic Dispatch (ED) is an optimization problem in power systems. The objective is to distribute the load demand among available generation units such that:

- The total cost of generation is minimized.
- The power balance constraints (generation = demand + losses) are satisfied.
- Each generator operates within its minimum and maximum limits.

---

### 2. **Bees Algorithm (BA)**
The Bees Algorithm is inspired by the foraging behavior of honeybees. It uses scout and worker bees to explore the solution space and refine solutions iteratively.

#### Key Steps in the Algorithm:
1. **Initialization**: Generate initial scout bee positions (random solutions).
2. **Elite Sites**: Recruit more bees for elite solutions to refine the search in promising regions.
3. **Neighborhood Search**: Perform local search around elite and selected sites.
4. **Global Search**: Generate new solutions for remaining scout bees to explore other regions.
5. **Evaluation**: Compute the cost for each solution.
6. **Selection**: Keep the best solutions and update the global best.
7. **Iteration**: Repeat until convergence or maximum iterations.

#### Parameters:
- **`nScoutBee`**: Number of scout bees.
- **`nEliteSite`**: Number of elite sites.
- **`r`**: Neighborhood search radius.
- **`MaxIt`**: Maximum number of iterations.

---

### 3. **Fuzzy Logic**
Fuzzy Logic introduces human-like reasoning in optimization by handling uncertainties and partial truths. In the context of ED:

- Fuzzy rules can be used to dynamically adjust parameters like the neighborhood radius \( r \) or penalty factors for violations.
- For example:
  - If \( \text{Power Balance Violation is High} \) then \( \text{Penalty is Increased} \).
  - If \( \text{Iteration Progress is Slow} \) then \( \text{Neighborhood Radius is Expanded} \).

This integration enhances the Bees Algorithm by allowing adaptive exploration and exploitation, improving convergence.

---

## Applications

- Power system optimization.
- Resource allocation problems.
- Multi-objective optimization tasks.


