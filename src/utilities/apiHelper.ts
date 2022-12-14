import fetch from "node-fetch";

export interface User {
  data: Data;
  support: Support;
}

interface Support {
  url: string;
  text: string;
}

interface Data {
  id: number;
  email: string;
  first_name: string;
  last_name: string;
  avatar: string;
}

class APIHelper {

        async getUser(userId: String): Promise<User> {

                // For now, consider the data is stored on a static `users.json` file
                return fetch('https://reqres.in/api/users/' + userId)
                        // the JSON body is taken from the response
                        .then(res => res.json())
                        .then(res => {
                                // The response has an `any` type, so we need to cast
                                // it to the `User` type, and return it from the promise
                                return res as User
                        })
        }

}

export default new APIHelper()