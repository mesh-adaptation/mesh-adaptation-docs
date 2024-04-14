Welcome to the documentation for Goalie!
========================================

.. rubric:: Manual

.. toctree::
    :numbered:

    1-motivation
    2-goal-oriented-error-estimation
    3-goal-oriented-mesh-adaptation

.. rubric:: API documentation

The classes and functions which comprise Goalie may be found in the API documentation.

.. toctree::
    :maxdepth: 1

    Goalie API documentation <.>

They are also listed alphabetically on the :ref:`index <genindex>` page. The index may
be searched using the inbuilt :ref:`search engine <search>`.

.. rubric:: Demos

*Time partitions and mesh sequences*

.. toctree::
    :maxdepth: 1

    Partitioning a time interval <../demos/time_partition.py>
    Creating a mesh sequence <../demos/mesh_seq.py>
    Solving ordinary differential equations using Goalie <../demos/ode.py>
    Burgers equation on a sequence of meshes <../demos/burgers.py>
    Adjoint Burgers equation <../demos/burgers1.py>
    Adjoint Burgers equation on two meshes <../demos/burgers2.py>
    Adjoint Burgers equation with a time-integrated QoI <../demos/burgers_time_integrated.py>
    Adjoint Burgers equation (object-oriented approach) <../demos/burgers_oo.py>
    Solid body rotation <../demos/solid_body_rotation.py>
    Solid body rotation with multiple prognostic variables <../demos/solid_body_rotation_split.py>
    Advection-diffusion-reaction <../demos/gray_scott.py>
    Advection-diffusion-reaction with multiple prognostic variables <../demos/gray_scott_split.py>

*Error estimation*

.. toctree::
    :maxdepth: 1

    Error estimation for Burgers equation <../demos/burgers_ee.py>
    Point discharge with diffusion <../demos/point_discharge2d.py>

*Mesh adaptation*

.. toctree::
    :maxdepth: 1

    Hessian-based mesh adaptation for a 2D steady-state problem <../demos/point_discharge2d-hessian.py>
    Goal-oriented mesh adaptation for a 2D steady-state problem <../demos/point_discharge2d-goal_oriented.py>
    Hessian-based mesh adaptation for a 2D time-dependent problem <../demos/burgers-hessian.py>
