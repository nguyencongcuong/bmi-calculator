enum ROUTE { home, result }

enum Gender { male, female }

enum MetricUnit {
  weightKilograms('kg'),
  heightMetres('m'),
  bodyMassIndex('kg/m²');

  final String label;
  const MetricUnit(this.label);
}

enum BMICategory implements Comparable<BMICategory> {
  underweight(
    18.5,
    'Underweight',
    'Your BMI is below the normal range. Consider discussing nutrition and health with a professional.',
  ),
  normalWeight(
    25,
    'Normal weight',
    'Your BMI is in the normal weight range for adults.',
  ),
  overweight(
    30,
    'Overweight',
    'Your BMI is in the overweight range. Diet and physical activity changes may help; a clinician can advise you.',
  ),
  obesityClassI(
    35,
    'Obesity class I',
    'Your BMI indicates obesity class I. A health professional can help with a safe plan.',
  ),
  obesityClassII(
    40,
    'Obesity class II',
    'Your BMI indicates obesity class II. Medical support is strongly recommended.',
  ),
  obesityClassIII(
    100,
    'Obesity class III',
    'Your BMI indicates obesity class III. Please seek guidance from a health professional.',
  );

  final double value;
  final String label;
  final String advice;
  const BMICategory(this.value, this.label, this.advice);

  @override
  int compareTo(BMICategory other) => value.compareTo(other.value);
}
