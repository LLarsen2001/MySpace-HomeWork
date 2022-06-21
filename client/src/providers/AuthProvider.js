import { useState } from "react"
import { useNavigate } from "react-router-dom"
import axios from 'axios'
import React from "react"




export const AuthContext = React.createContext()

const AuthProvider = ({ children }) => {
    const [user, setUser] = useState(null)
    const navigate = useNavigate()


    const login = async (user) => {
        try {
            let res = await axios.post('/api/auth/sign_in', user)
            setUser(res.data.data)
            navigate('/')
        } catch (err) {
            alert('login failed')
            console.log(err)
        }
    }

    const Signup = async (user) => {
        try {
            let res = await axios.post('/api/auth', user)
            console.log(res)
            setUser(res.data.data)
            navigate('/')
        } catch (err) {
            alert('Signing In Failed')
        }
    }

    const logout = async () => {
        try {
            await axios.delete('/api/auth/sign_out')
            setUser(null)
            navigate('/')
        } catch (err) {
            alert('Logging out Failed')
        }
    }

    return (
        <AuthContext.Provider value={{ user, setUser, Signup, login, logout }}>
            {children}
        </AuthContext.Provider>
    )
}
export default AuthProvider