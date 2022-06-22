import axios from "axios"
import { Profiler, useContext, useEffect, useState } from "react"
import { AuthContext } from "../../providers/AuthProvider"
import Card from "./ProfilePage"


const UserAccount = () => {
    const { user } = useContext(AuthContext)
    const [profiles, setProfiles] = useState([])
    useEffect(() => {
        getProfiles()

    }, [])

    const getProfiles = async () => {
        try {
            let res = await axios.get('/api/profiles')
            setProfiles(res.data)
        } catch (err) {
            alert('error occured')
            console.log(err)
        }
    }

    const sample = () => {
        if (profiles.length > 0) {
            let index = Math.floor(Math.random() * profiles.length)
            return profiles[index];
        } else {
            return null
        }
    };



    const renderProfiles = () => {

        let profile = sample()
        if (profile) {
            return profiles.map((card) => (
                <Card
                    key={card.id}
                    avatar={card.avatar}
                    name={card.name}
                    dob={card.dob}
                    gender={card.gender}
                    bio={card.bio}
                />
            ))
        } else {
            return <p>no profiles</p>
        }
    }

    return (
        <div>
            <h1>UserAccount: you are logged in if you are seeing this.</h1>
            <p>Hello {user.email}</p>
            <div>
                {renderProfiles()}
            </div>
        </div>
    )
}
export default UserAccount