import React, { useEffect, useState } from "react";

import LessonsTable from "./LessonsTable"
import Header from "../Header/Header";
import Footer from "../Footer/Footer";
import { Link } from "react-router-dom";

 //const lessons = fakeLessons.lessons;
const UpcomingLessons =({RolesButtonHandler})=>{
 
  const [lessons, setLessons] = useState([]);

	useEffect(() => {
		fetchData();
	}, []);

	const fetchData = async () => {
		try {
			const response = await fetch("http://localhost:3100/lesson");
			const data = await response.json();
			console.log(data.data);
			setLessons(data.data);
		} catch (error) {
			console.error(error.message);
		}
	};

    return (
			<div>
				<Header />
				<div class="dropdown text-right my-1 mx-4">
					<button
						class="btn btn-secondary dropdown-toggle"
						type="button"
						id="dropdownMenuButton"
						data-toggle="dropdown"
						aria-haspopup="true"
						aria-expanded="false"
					>
						Choose Cohort
					</button>
					<div className="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a className="dropdown-item" href="#">
							Westmidlands Class 1
						</a>
						<a className="dropdown-item" href="#">
							Westmidlands Class 2
						</a>
						<a className="dropdown-item" href="#">
							Westmidlands Class 3
						</a>
					</div>
				</div>
				<div className="ULPage">
					<h3 className="mt-0">
						<strong>Upcoming Classes</strong>
					</h3>
					<table>
						<thead >
							<tr>
								<th>Module</th>
								<th>Lesson</th>
								<th>Date</th>
								<th>Time</th>
								<th>Vacancies</th>
							</tr>
						</thead>
						<tbody align="center" className="firstRow">
							{lessons.map((el, index) => (
								<LessonsTable
									key={index}
									el={el}
									RolesButtonHandler={RolesButtonHandler}
								/>
							))}
						</tbody>
					</table>
				</div>
				<Footer />
			</div>
		);
}


export default UpcomingLessons;
