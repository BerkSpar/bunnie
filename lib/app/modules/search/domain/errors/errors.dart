abstract class FailureSearch implements Exception {}

class InvalidTextError implements FailureSearch {}

class InvalidPageError implements FailureSearch {}

class DataSourceError implements FailureSearch {}
