# Creating a numeric vector of sample patient weights (in kg)
weight <- c(60, 72, 57, 90, 95, 72)

# Sequence of numbers from 1 to 5
x <- 1:5              # Short syntax for seq(1, 5)

# Replicating elements (e.g., experimental group identifiers)
group <- rep(c("A", "B"), each = 3)  # Creates "A", "A", "A", "B", "B", "B"
```[cite: 1, 2]

---

### Basic Descriptive Statistics Functions
Once a numeric vector is created, you can directly compute descriptive statistics using base R functions[cite: 1, 2]:

| Statistic | R Command | Description |
| :--- | :--- | :--- |
| **Sample Size** | `length(x)` | Counts total observations  |
| **Mean** | `mean(x)` | Calculates sample mean  |
| **Median** | `median(x)` | Calculates 50th percentile |
| **Standard Deviation** | `sd(x)` | Sample standard deviation |
| **Variance** | `var(x)` | Sample variance |
| **Quantiles** | `quantile(x, probs = c(0.25, 0.75))` | Computes specified percentiles/quartiles |
| **Five-Number Summary** | `summary(x)` | Returns Min, 1st Qu, Median, Mean, 3rd Qu, Max |

---

## 2. Working with Data Frames & Importing Data

Real-world datasets contain multiple variables (e.g., age, treatment group, measurement values) across individual observations[cite: 1, 2]. In R, these are stored in **data frames**[cite: 1, 2].

### Building and Exploring Data Frames

```R
# Creating a simple data frame
patients <- data.frame(
  id = 1:5,
  treatment = factor(c("Control", "Drug", "Control", "Drug", "Drug")),
  score = c(12.4, 15.1, 11.8, 16.5, 14.2)
)

# Exploring structure and summaries
str(patients)      # Displays internal structure, data types, and sizes
summary(patients)  # Summarizes each column according to its data type
head(patients, 3)  # Displays the first 3 rows
```[cite: 1, 2]

### Subsetting & Dollar Notation (`$`)
* Use `$` to extract a single column as a vector: `patients$score`[cite: 1, 2].
* Use bracket indexing `[row, column]` for matrix-style subsetting[cite: 1, 2]:
  * `patients[1, 3]` extracts row 1, column 3[cite: 2].
  * `patients[patients$score > 14, ]` filters rows where the score is greater than 14[cite: 1, 2].

### Reading External Data Files
You can load text-based dataset files into R using `read.table()` or `read.csv()`[cite: 1, 2]:

```R
# Read a space- or tab-separated text file with headers
data <- read.table("alkfos.txt", header = TRUE)

# Convert character grouping columns to factors for statistical modeling
data$grp <- factor(data$grp)
```[cite: 1, 2]

---

## 3. Hands-On Practice Exercise

Try running these initial exercises in your R/RStudio console to practice vector generation, indexing, and descriptive summaries[cite: 2]:

1. **Exercise 1 (Sequences):** Generate a vector of all even numbers from 2 to 20 using `seq()`, and calculate its mean and standard deviation[cite: 2].
2. **Exercise 2 (Filtering & Selection):** Generate 100 random numbers from a standard normal distribution using `z <- rnorm(100)`[cite: 1]. Extract only the positive values (`z > 0`) into a new vector `z_pos`, and calculate the 25th, 50th, and 75th percentiles using `quantile()`[cite: 1, 2].

When you're ready, share your code or results, or let me know if you would like to move directly to probability distributions in R!
