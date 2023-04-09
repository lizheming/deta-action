![](assets/deta.svg)
# Deta Space Action

[GitHub Action](https://github.com/features/actions) to deploy current repo to [Deta Space](https://deta.space).
## Input variables

See [action.yml](action.yml) for more detailed information.

- `access_token`: Deta access token. [How to get Deta access token?](https://deta.space/docs/en/basics/cli#authentication)
- `id`: project id of an existing project
- `tag`: tag to identify this push
- `dir`: src of project to push (default "./")
- `listed`: listed on discovery
- `notes`: release notes
- `version`: version for the release

## Usage


```yml
# .github/workflows/deploy.yml
name: deploy to deta space

on: 
  push:
    branches:
    - main

jobs:
  deploy:
    name: deploy to deta space
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@v2

    - name: Deploy
      uses: lizheming/deta-action@master
      with:
        access_token: ${{ secrets.space_access_token }}
        id: ${{ secrets.space_id }}
        version: "1.0.0"
        notes: "Release automatically with GitHub deta action"
        listed: true
```