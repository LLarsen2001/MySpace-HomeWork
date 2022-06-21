import { useContext } from "react"
import { Link } from "react-router-dom"
import { AuthContext } from "../../providers/AuthProvider"


const Navbar = () => {
    const { user, logout } = useContext(AuthContext);
    const renderNavLink = () => {
        if (user) {
            return (
                <>
                    <Link to="/account">
                        <li>Account</li>
                    </Link>
                    <li onClick={logout}>Logout</li>
                </>
            )
        } else {
            return (
                <>
                    <Link to="/login">
                        <li>Login</li>
                    </Link>
                    <Link to="/signup">
                        <li>SignUp!</li>
                    </Link>
                </>

            )
        }
    }

    return (
        <>
            <nav>
                <ul>
                    <Link to="/">
                        <li>Home</li>
                    </Link>
                    {renderNavLink()}
                </ul>
            </nav>
        </>
    )


}
export default Navbar