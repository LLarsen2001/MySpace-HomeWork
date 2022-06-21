import { useContext } from "react"
import { AuthContext } from "../../providers/AuthProvider"


const UserAccount = () => {
    const { user } = useContext(AuthContext)
    return (
        <div>
            <h1>UserAccount: you are logged in if you are seeing this.</h1>
            <p>Hello {user.email}</p>
        </div>
    )
}
export default UserAccount