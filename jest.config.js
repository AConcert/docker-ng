module.exports = {
  preset: 'jest-preset-angular',
  setupFilesAfterEnv: ['<rootDir>/setup-jest.ts'],
  testPathIgnorePatterns: [
    "<rootDir>/node_modules/",
    "<rootDir>/dist/",
    "<rootDir>/src/test.ts"
  ],
  globals: {
    "ts-jest": {
      "tsConfig": "<rootDir>/tsconfig.spec.json",
      "stringifyContentPathRegex": "\\.html$"
    }
  }
};