This fork is created to improve support of `signInWithWebUI` for web, see comment of `signInWithWebUIFromExternal` for details.

Changes:
- Add `signInWithWebUIFromExternal`
- Update project reference to forked version
- Add pre-built files packages\auth\amplify_auth_cognito_dart\lib\src\workers\workers.js* so forked packages could be referenced via git without bootstrapping.

Base version:
- amplify_auth_cognito: 1.3.3
- amplify_auth_cognito_dart: 0.10.2+3
