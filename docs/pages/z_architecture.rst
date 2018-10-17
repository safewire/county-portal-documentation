============================
Application Architecture
============================

The County Portal follows a three-tiered architecture pattern.  Tiers are Presentation, Services, and Persistence.
The software is written in Python and heavily leverages the Python Django framework to enforce a model view controller
design pattern.  A high level communication diagram follows.

.. image:: /images/system_architecture_communication_diagram.png

Presentation tier
--------------------------------------

The presentation tier contains what the user directly interacts with.  The presentation is intentionally kept seperate from
business logic or business rules in order to ensure non-functional requirements such as maintainability, modify-ability,
and extensibility are met.

Portal
^^^^^^^^^^^^^^^^^^^

The Portal is the main page shown when a user accesses https://www.auditorportal.com This page displays a registration form along with
links to frequently asked questions, terms or sale, and warnings.

Admin
^^^^^^^^^^^^^^^^^^^

The Admin page is displayed when a users accesses https://www.auditorportal.com/admin  This is used primarily by the
Auction Coordinator and the Application Administrator.

Monitoring
^^^^^^^^^^^^^^^^^^^

The monitoring interface provides access to system uptime and application alerts to ensure production stability.  This
is used by the Application Administrator.

Services tier
--------------------------------------

County Portal
^^^^^^^^^^^^^^^^^^^

The County Portal services are accessed by the presentation tier.  These services respond to user events while interacting
with the application.  Dropdown boxes, submit actions, all activate services which perform necessary activities based on business rules.


Blockchain
^^^^^^^^^^^^^^^^^^^

The blockchain services provide a further abstraction from the web3 standard to ensure an efficient communication between
the County Portal and ethereum technology.  The standards that ethereum and web3 user to communicate a still actively
being defined, this layer ensures the business logic can remain unchanged as these standards mature.

Persistence tier
--------------------------------------

Operational
^^^^^^^^^^^^^^^^^^^

The County Portal application uses Postgres for transactional intra-day operational data storage.  The following
is an entity relationship diagram.

.. image:: /images/portal_models.png

Messaging
^^^^^^^^^^^^^^^^^^^

The application communicates internally using an asynchronous messaging queue.  The technologies are Celery for queue
management and redis for communication between queues.  These asynchronous messages allow for a more responsive web application
as well as long running tasks.

Reporting
^^^^^^^^^^^^^^^^^^^

Reporting is provided by the Django application "Django explorer" and available at https://www.auditorportal.com/explorer
The user of these reports is the application administrator.

Archive
^^^^^^^^^^^^^^^^^^^

Generated deeds are archived using the technology IPFS.  IPFS (the InterPlanetary File System) is a new hypermedia distribution protocol, addressed by content and identities. IPFS enables the creation of completely distributed applications. It aims to make the web faster, safer, and more open.

IPFS is a distributed file system that seeks to connect all computing devices with the same system of files. In some ways, this is similar to the original aims of the Web, but IPFS is actually more similar to a single bittorrent swarm exchanging git objects. You can read more about its origins in the paper IPFS - Content Addressed, Versioned, P2P File System.

https://github.com/ipfs/ipfs/blob/master/papers/ipfs-cap2pfs/ipfs-p2p-file-system.pdf?raw=true

IPFS is becoming a new major subsystem of the internet.


Distributed ledger
^^^^^^^^^^^^^^^^^^^

Ethereum is a decentralized platform that runs smart contracts: applications that run exactly as programmed without any possibility of downtime, censorship, fraud or third-party interference.

These apps run on a custom built blockchain, an enormously powerful shared global infrastructure that can move value around and represent the ownership of property.

This enables developers to create markets, store registries of debts or promises, move funds in accordance with instructions given long in the past (like a will or a futures contract) and many other things that have not been invented yet, all without a middleman or counterparty risk.

It is developed by the Ethereum Foundation, a Swiss non-profit, with contributions from great minds across the globe.


============================
Infrastructure Architecture
============================

Cloud Configuration
--------------------------------------

The County Portal uses all Cloud based technologies for hosting.  The application uses AWS EC2 for Infrastructure-as-a-Service,
Heroku for Platform-as-a-service, and the services AWS Simple Email Service, Freshdesk, and Uptime Monitor for application specific needs.

There is an application server which hosts both the presentation and services tiers.  There is a database server with daily scheduled backups.
This pattern is replicated two times for stage and production.

Security
--------------------------------------
The application leverages SHA-256 encryption for data in transit.

Data at reset is AES-256, block-level storage encryption. Keys are managed by Amazon, and individual volume keys are stable for the lifetime of the volume.

Encryption in use is not currently employed as the application does not currently require masking of personally identifiable data or payment card information.