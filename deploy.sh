
cd docs
make html && make latexpdf && cp _build/latex/AuditorPortal.pdf _build/html/ 
make latexpdf

aws s3 sync _build/html s3://docs.auditorportal.com/
cd ..


