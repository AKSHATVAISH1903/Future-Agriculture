# Generated by Django 4.2.1 on 2023-11-15 14:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("krishi", "0006_counsel_date"),
    ]

    operations = [
        migrations.CreateModel(
            name="PlantResult",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("name", models.CharField(max_length=100)),
                ("message", models.TextField()),
            ],
        ),
    ]
