import { Routes, Route } from 'react-router-dom'
import Navbar from './components/shared/Navbar';
import SignUp from './components/auth/SignUp';
import Home from './components/shared/Home';
import Login from './components/auth/Login';
import UserAccount from './components/shared/UserAccount';
import ProtectedRoute from './components/auth/ProtectedRoute';
import FetchUser from './components/auth/FetchUser';
import './App.css'

function App() {
  return (
    <>
      <Navbar />
      <>
        <FetchUser>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/login" element={<Login />} />
            <Route path="/signup" element={<SignUp />} />
            <Route element={<ProtectedRoute />}>
              <Route path='/account' element={<UserAccount />} />
            </Route>
          </Routes>
        </FetchUser>
      </>
    </>
  );
}

export default App;
