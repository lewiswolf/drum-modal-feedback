import eslint from '@eslint/js'
import { defineConfig, globalIgnores } from 'eslint/config'
import tseslint from 'typescript-eslint'

export default defineConfig(
	globalIgnores(['**/dist/**', 'eslint.config.mjs', '**/unused/**']),
	{
		extends: [
			eslint.configs.all,
			tseslint.configs.strictTypeChecked,
			tseslint.configs.stylisticTypeChecked,
		],
		languageOptions: {
			ecmaVersion: 'latest',
			parserOptions: {
				projectService: true,
				tsconfigRootDir: import.meta.dirname,
			},
		},
		rules: {
			'@typescript-eslint/consistent-type-definitions': 'off',
			'@typescript-eslint/no-unnecessary-type-arguments': 'off',
			'@typescript-eslint/non-nullable-type-assertion-style': 'off',
			camelcase: 'off',
			'capitalized-comments': 'off',
			complexity: 'off',
			'func-style': 'off',
			'id-length': 'off',
			'max-lines': 'off',
			'max-lines-per-function': 'off',
			'max-statements': 'off',
			'new-cap': 'off',
			'no-console': ['error', { allow: ['error', 'info'] }],
			'no-inline-comments': 'off',
			'no-magic-numbers': 'off',
			'no-ternary': 'off',
			'no-underscore-dangle': 'off',
			'no-void': ['error', { allowAsStatement: true }],
			'one-var': 'off',
			'sort-imports': 'off',
			'sort-keys': 'off',
		},
	},
	{
		extends: [tseslint.configs.disableTypeChecked],
		files: ['**/*.js'],
	},
)
