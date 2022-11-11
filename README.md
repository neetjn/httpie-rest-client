# sga-httpie-toolkit

This is a fairly simple project aimed at making it easier to poke api endpoints for testing purposes.
The only prerequesite is having httpie installed.
Use `brew install httpie` to install on mac or `pip install httpie` to install on other operating systems with pip.

## Example Use

```sh
cd client

export API_ENV=dev+foo

# GET
# ./api.sh [verb] [?identifier]
./api.sh GET # fetches resource collection
./api.sh GET 1 # fetches single resource

# POST
# ./api.sh [verb] [*payload]
./api.sh POST foo

# PUT
# ./api.sh [verb] [*identifier] [*payload]
./api.sh PUT 1 foo

# DELETE
# ./api.sh [verb] [*identifier]
./api.sh DELETE 1
```

---

Copyright (c) 2022 John Nolette Licensed under the MIT License.
