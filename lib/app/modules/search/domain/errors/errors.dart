abstract class FailureSearch implements Exception {}

class InvalidInputError implements FailureSearch {}

class InvalidPageError implements FailureSearch {}

class DataSourceError implements FailureSearch {}
