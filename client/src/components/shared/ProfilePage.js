import styled from "styled-components"
const Card = (props) => {

  return (

    <CardContainer>
      <CardHeaderContainer>
        <div className="avatar-holder">
          <img src={props.avatar} />
        </div>
        <div className="name">
          <h3>{props.name}</h3>
        </div>
        <div className="button" >
          <button>follow</button>
        </div >
        <div className="about">
          <div>
            <p2><b>gender: </b>{props.gender}</p2>
          </div>
          <div>
            <p2><b>Birthday: </b>{props.dob}</p2>
          </div>
        </div>
      </CardHeaderContainer>
      <CardBody>

        <div>
          <h5>Bio</h5>
        </div>
        <CardBioContainer >

          <p>{props.bio}</p>
        </CardBioContainer>


      </CardBody>
    </CardContainer >

  )
}
const CardContainer = styled.div`
  box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px,
    rgba(60, 64, 67, 0.15) 0px 1px 3px 1px;
  margin: 20px;
  padding: 10px 20px;
`;

const CardHeaderContainer = styled.div`
    display: inline;
    justify-content: space-between;
    padding:10px;
`;

const CardBody = styled.div`
    padding:10px;
`;

const CardBioContainer = styled.div`
  border: insert;
  border-style: inset;
  margin: 20px;
  padding: 20px;
`;
export default Card


{/* <div class="card">
  <div class="ds-top"></div>
  <div class="avatar-holder">
    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1820405/profile/profile-512.jpg?1533058950" alt="Albert Einstein">
  </div>
  <div class="name">
    <a href="https://codepen.io/AlbertFeynman/" target="_blank">Albert Feynman</a>
    <h6 title="Followers"><i class="fas fa-users"></i> <span class="followers">90</span></h6>
  </div>
  <div class="button">
    <a href="#" class="btn" onmousedown="follow();">Follow <i class="fas fa-user-plus"></i></a>
  </div>
  <div class="ds-info">
    <div class="ds pens">
      <h6 title="Number of pens created by the user">Pens <i class="fas fa-edit"></i></h6>
      <p>29</p>
    </div>
    <div class="ds projects">
      <h6 title="Number of projects created by the user">Projects <i class="fas fa-project-diagram"></i></h6>
      <p>0</p>
    </div>
    <div class="ds posts">
      <h6 title="Number of posts">Posts <i class="fas fa-comments"></i></h6>
      <p>0</p>
    </div>
  </div>
  <div class="ds-skill">
    <h6>Skill <i class="fa fa-code" aria-hidden="true"></i></h6>
    <div class="skill html">
      <h6><i class="fab fa-html5"></i> HTML5 </h6>
      <div class="bar bar-html">
        <p>95%</p>
      </div>
    </div>
    <div class="skill css">
      <h6><i class="fab fa-css3-alt"></i> CSS3 </h6>
      <div class="bar bar-css">
        <p>90%</p>
      </div>
    </div>
    <div class="skill javascript">
      <h6><i class="fab fa-js"></i> JavaScript </h6>
      <div class="bar bar-js">
        <p>75%</p>
      </div>
    </div>
  </div>
</div> */}
{/* <h2>{props.name}</h2>
<p>{props.dob}</p>
<p>{props.gender}</p>
<p>{props.bio}</p> */}
{/* <img src={props.avatar} /> */ }