from setuptools import setup, find_packages

with open("README.md", "r") as f:
    long_description = f.read()

setup(
    name="link-shorteners",
    version="1.12.0",
    description="List of all URL shorteners, such as bitly, tinyurl, shorturl, and many others.",
    long_description=long_description,
    long_description_content_type="text/markdown",
    packages=find_packages(),
    package_data={'link_shorteners': ['link-shorteners.txt']},
    url="https://github.com/mayakyler/link-shorteners/py-link-shorteners",
    license="MIT",
)
