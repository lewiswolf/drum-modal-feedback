module.exports = {
	root: true,
	env: { node: true },
	extends: ['eslint:recommended', 'plugin:@typescript-eslint/strict-type-checked'],
	ignorePatterns: ['dist', 'unused', '.eslintrc.cjs'],
	parser: '@typescript-eslint/parser',
	parserOptions: {
		project: ['./tsconfig.json'],
	},
	plugins: ['@typescript-eslint'],
}
