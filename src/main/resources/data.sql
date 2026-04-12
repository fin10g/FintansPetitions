SET REFERENTIAL_INTEGRITY FALSE;
DELETE FROM signer;
DELETE FROM petition;
SET REFERENTIAL_INTEGRITY TRUE;

-- PETITIONS
INSERT INTO petition (id, title, description) VALUES
                                              (1,'GLUAS',
                                               'Galway is one of Ireland’s fastest-growing cities, yet its transport infrastructure has not kept pace with rising demand. A Luas-style light rail system would provide a sustainable, long-term solution to the city’s increasing congestion, environmental pressures, and population growth.

                                                Currently, Galway relies heavily on cars and buses, leading to chronic traffic bottlenecks, especially along key routes such as the Headford Road and the Dublin Road. A Luas system would offer a reliable and efficient alternative, reducing travel times and encouraging a shift away from private car use. This would not only ease congestion but also improve air quality and help Galway meet its climate targets.

                                                In addition, a light rail network could better connect major residential areas, employment hubs, and educational institutions such as the University of Galway and ATU. Improved connectivity would support economic development by making the city more accessible for workers, students, and tourists alike.

                                                Galway’s compact urban layout makes it particularly well-suited to a Luas system. Strategic routes could serve high-demand corridors without the need for extensive tunnelling or disruptive construction. Over time, the system could be expanded in line with population growth, ensuring scalability.

                                                Ultimately, investing in a Luas system would future-proof Galway’s transport network. It would enhance quality of life, support sustainable development, and position the city as a modern, forward-thinking urban centre capable of meeting the challenges of the 21st century.
                                                '),

                                              (2,'CLUAS',
                                               'Cork, as Ireland’s second-largest city and a key economic hub, faces growing pressure on its transport infrastructure. A Luas-style light rail system would provide a transformative solution to congestion, support sustainable growth, and enhance connectivity across the metropolitan area.

                                                At present, Cork is heavily car-dependent, with significant traffic congestion along major corridors such as the N40 and routes into the city centre. Bus services, while important, are often delayed by the same congestion they aim to alleviate. A Luas system would offer a fast, reliable, and high-capacity alternative, encouraging commuters to shift from private cars to public transport. This modal shift would reduce emissions, improve air quality, and contribute to Ireland’s climate goals.

                                                A light rail network in Cork could strategically link key destinations, including the city centre, major employment zones, Cork Airport, University College Cork, and Munster Technological University. By improving access to these areas, the system would support economic activity, attract investment, and enhance the daily lives of residents and visitors.

                                                Cork’s expanding population and planned urban development make it well-suited to light rail. A Luas system could be developed in phases, beginning with high-demand corridors and expanding over time. This scalability ensures that infrastructure investment aligns with long-term growth.

                                                Ultimately, a Luas system would future-proof Cork’s transport network. It would reduce congestion, promote sustainability, and reinforce Cork’s position as a vibrant, accessible, and forward-looking city.
                                                '),

                                              (3,'C.A.R.T',
                                               'Connemara, one of Ireland’s most culturally rich and geographically striking regions, faces increasing challenges around accessibility, sustainability, and balanced regional development. A Connemara Rapid Transit (C.A.R.T.) system would provide a vital transport backbone, connecting rural communities while preserving the region’s unique character.

                                                At present, transport in Connemara is heavily reliant on private cars and limited bus services. This creates isolation for residents without access to a vehicle, restricts employment and education opportunities, and contributes to seasonal congestion driven by tourism. A C.A.R.T. system—designed as a flexible, high-frequency public transport network—would improve mobility by linking key towns such as Clifden, Oughterard, and Maam Cross with Galway City.

                                                Such a system could combine light rail elements with dedicated bus rapid transit corridors, tailored to Connemara’s rural landscape. By prioritising reliability and coverage, C.A.R.T. would enable residents to commute, access healthcare, and participate more fully in the regional economy without dependence on cars.

                                                In addition, improved transport would support sustainable tourism by reducing traffic along narrow coastal roads and lowering environmental impact in sensitive areas like Connemara National Park. Visitors could travel efficiently while preserving the natural beauty that defines the region.

                                                Importantly, C.A.R.T. would help future-proof Connemara against rural decline. By enhancing connectivity and quality of life, it would encourage population retention and attract new residents and businesses.

                                                Ultimately, a Connemara Rapid Transit system represents an investment in regional equity, sustainability, and resilience—ensuring that Connemara remains vibrant, accessible, and thriving for generations to come.'),

                                              (4,'NIMBY Wind Turbines',
                                               'While renewable energy is important, the proposed wind turbine development in our local area raises serious and ' ||
                                               'legitimate concerns for residents. Supporting sustainability should not mean disregarding the wellbeing, environment, and ' ||
                                               'character of established communities.

                                                First, the visual impact of large-scale wind turbines cannot be understated. Our landscape is a defining feature of this ' ||
                                               'area, valued by residents and visitors alike. Installing towering turbines would permanently alter scenic views, undermining ' ||
                                               'the natural beauty that draws people here and contributes to local tourism.

                                                Second, there are concerns about noise and quality of life. Even with modern designs, turbines generate a constant low-frequency ' ||
                                               'sound that can be disruptive, particularly in otherwise quiet rural settings. For those living nearby, this may affect sleep, ' ||
                                               'stress levels, and overall wellbeing.

                                                Property values are another key issue. Evidence from similar developments suggests that homes located close to wind farms can ' ||
                                               'decrease in value, placing an unfair financial burden on residents who did not choose to live near industrial infrastructure.

                                                Additionally, the environmental benefits are not always clear-cut at a local level. Construction can disrupt wildlife habitats, ' ||
                                               'bird migration patterns, and fragile ecosystems. These impacts should not be dismissed in the pursuit of broader national ' ||
                                               'targets.

                                                In principle, renewable energy projects should be located in areas where they cause the least harm to communities. This proposal, ' ||
                                               'in its current form, places a disproportionate burden on local residents, and for that reason, it deserves strong opposition.'),

                                              (5,'YIMBY Wind Turbines',
                                               'Please, for the love of god, put turbines wherever you like and stop oil reliance. That may sound blunt,' ||
                                               'but but it reflects a growing urgency grounded in reality. The continued dependence on fossil fuels is driving the ' ||
                                               'climate change crisis, exposing communities to volatile energy prices, geopolitical instability, and long-term ' ||
                                               'environmental damage. Expanding wind energy infrastructure is one of the fastest, most cost-effective ways to transition ' ||
                                               'toward a cleaner, more secure energy system.

                                                Wind turbines are not just symbols of sustainability—they are practical tools for reducing carbon emissions at scale. Unlike ' ||
                                               'fossil fuel plants, they generate electricity without burning fuel, meaning no ongoing emissions once installed. Countries ' ||
                                               'that have invested heavily in wind, such as Denmark, demonstrate that high levels of renewable integration are both ' ||
                                               'achievable and economically beneficial.

                                                Opposition to turbines often focuses on aesthetics or local inconvenience, but these concerns must be weighed against the broader ' ||
                                               'public good. Climate change is not abstract—it leads to extreme weather, rising sea levels, and biodiversity loss that ' ||
                                               'ultimately affect everyone. Delaying renewable projects prolongs dependence on oil and gas, locking in further harm.

                                                Moreover, wind energy can strengthen local economies. Turbine projects create construction and maintenance jobs, provide ' ||
                                               'income to landowners, and reduce reliance on imported fuels. They also help stabilize electricity prices over time, benefiting ' ||
                                               'households and businesses alike.

                                                If the goal is a livable future, then the answer is clear: accelerate renewable deployment. That means accepting turbines as ' ||
                                               'part of the landscape and prioritizing collective survival over short-term discomfort.

                                                ');
-- SIGNERS
INSERT INTO signer (first_name, last_name, email, petition_id) VALUES
                                                                   ('Martin', 'Sweeney', 'martin.sweeney@gmail.com',1),
                                                                   ('Adam', 'Regusea', 'adam.regusea@gmail.com',1),
                                                                   ('Adam', 'Buxton', 'adam.buxton@gmail.com',2),
                                                                   ('Amy', 'Adams', 'amy.adams@gmail.com',3),
                                                                   ('Tig', 'Notaro', 'tig.notaro@gmail.com',4),
                                                                   ('Yanis', 'Varoufakis', 'yanis.varoufakis@gmail.com',4);


ALTER TABLE petition ALTER COLUMN id RESTART WITH 6;
ALTER TABLE signer ALTER COLUMN signer_id RESTART WITH 7;